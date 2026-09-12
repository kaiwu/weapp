import test from 'node:test';
import assert from 'node:assert/strict';
import { toList } from '../build/dev/javascript/weapp/gleam.mjs';
import { obj_get, obj_lookup, obj_literal, obj_set } from '../build/dev/javascript/weapp/wechat_ffi.mjs';
import { selector_query_exec_with_callback } from '../build/dev/javascript/weapp/wechat_wxml_ffi.mjs';

test('safe lookup is additive and legacy invalid-receiver exceptions are preserved', () => {
    for (const value of [undefined, null, true, 0, 'text']) {
        assert.throws(() => obj_get(value, 'field'), TypeError);
        assert.equal(obj_lookup(value, 'field').isOk(), false);
    }
    for (const lookup of [obj_get, obj_lookup]) {
        assert.equal(lookup({ field: null }, 'field').isOk(), true);
        assert.equal(lookup({ field: 3 }, 'field')[0], 3);
        assert.equal(lookup(Object.assign(() => {}, { field: 4 }), 'field')[0], 4);
        assert.equal(lookup(Object.create({ inherited: 5 }), 'inherited')[0], 5);
    }
});

test('selector callback retains the native results and callback ordering', () => {
    const results = [{ top: 12 }, null], order = [];
    const query = { exec(callback) {
        order.push('native'); callback(results); order.push('returned');
    } };
    selector_query_exec_with_callback(query, value => {
        assert.equal(value, results); order.push('callback');
    });
    assert.deepEqual(order, ['native', 'callback', 'returned']);
});


test('literal builds an ordinary fresh object with safe duplicate and special keys', () => {
    const symbol = Symbol('field');
    const entries = [['x', 1], ['__proto__', { polluted: true }], ['x', 2], [symbol, 3]];
    const value = obj_literal(toList(entries));
    assert.equal(Object.getPrototypeOf(value), Object.prototype);
    assert.equal(value.x, 2);
    assert.equal(value.polluted, undefined);
    assert.deepEqual(Object.keys(value), ['x', '__proto__']);
    assert.equal(value[symbol], 3);
    assert.equal(Object.getOwnPropertyDescriptor(value, '__proto__').enumerable, true);
    assert.equal(Object.getOwnPropertyDescriptor(value, '__proto__').writable, true);
    assert.equal(Object.getOwnPropertyDescriptor(value, '__proto__').configurable, true);
    assert.notEqual(value, obj_literal(toList(entries)));
});

test('literal preserves key coercion and descriptors on runtimes without Object.fromEntries', () => {
    const original = Object.fromEntries, symbol = Symbol('coerced'), calls = [];
    const key = { [Symbol.toPrimitive](hint) { calls.push(hint); return symbol; } };
    const entries = toList([[key, 1], ['__proto__', 2], [symbol, 3]]);
    const fast = obj_literal(entries);
    try {
        Object.fromEntries = undefined;
        const fallback = obj_literal(entries);
        assert.deepEqual(Object.getOwnPropertyDescriptors(fallback), Object.getOwnPropertyDescriptors(fast));
        assert.equal(Object.getPrototypeOf(fallback), Object.prototype);
        assert.equal(fallback[symbol], 3);
        assert.deepEqual(calls, ['string', 'string']);
    } finally { Object.fromEntries = original; }
});

test('native invocation keeps the receiver and argument identities', async () => {
    const { obj_invoke } = await import('../build/dev/javascript/weapp/wechat_ffi.mjs');
    const argument = { native: true };
    const receiver = { value: 3, method(first, second) {
        assert.equal(this, receiver);
        assert.equal(first, argument);
        assert.equal(second, undefined);
        return this.value;
    } };
    assert.equal(obj_invoke(receiver, 'method', [argument, undefined]), 3);
    assert.throws(() => obj_invoke(receiver, 'missing', []), TypeError);
});

test('immutable property update retains own enumerable keys without triggering prototype setters', () => {
    const symbol = Symbol('native');
    const source = Object.create(null);
    source.__proto__ = { polluted: true };
    source[symbol] = 3;
    let reads = 0;
    Object.defineProperty(source, 'x', { enumerable: true, get() { reads++; return 7; } });
    Object.defineProperty(source, 'hidden', { value: 9 });
    const output = obj_set(source, 'x', 8);
    assert.equal(reads, 1);
    assert.equal(Object.getPrototypeOf(output), Object.prototype);
    assert.equal(output.polluted, undefined);
    assert.equal(output[symbol], 3);
    assert.equal(output.hidden, undefined);
    assert.equal(output.x, 8);
    assert.deepEqual(Object.getOwnPropertyDescriptor(output, 'x'), { value: 8, enumerable: true, configurable: true, writable: true });
    assert.equal(Object.getOwnPropertyDescriptor(source, 'x').get instanceof Function, true);
    assert.equal(Object.getPrototypeOf(obj_set({}, '__proto__', source)), Object.prototype);
});


test('legacy mkdir forwards its options unchanged and the additive helper forwards booleans', async () => {
    const { mkdir_sync, mkdir_recursive_sync } = await import('../build/dev/javascript/weapp/wechat/filesystem.mjs');
    const calls = [], options = { recursive: true };
    const manager = { mkdirSync(...args) { calls.push(args); } };
    mkdir_sync(manager, '/old', options);
    mkdir_recursive_sync(manager, '/new', true);
    assert.equal(calls[0][1], options);
    assert.deepEqual(calls[1], ['/new', true]);
});

test('interval cancellation fixes the misspelled native call and preserves the timer handle', async () => {
    const { clear_interval } = await import('../build/dev/javascript/weapp/wechat_ffi.mjs');
    const previous = globalThis.clearInterval;
    const timer = 42, cancelled = [];
    globalThis.clearInterval = value => { cancelled.push(value); };
    try { clear_interval(timer); assert.deepEqual(cancelled, [timer]); }
    finally { globalThis.clearInterval = previous; }
});

test('array conversion preserves identities and list order without consuming or mutating the list', async () => {
    const { from_list, from_reversed_list } = await import('../build/dev/javascript/weapp/wechat/array.mjs');
    const item = { value: 1 }, values = [item, null, undefined, 3], list = toList(values);
    assert.deepEqual(from_list(list), values);
    assert.deepEqual(from_reversed_list(list), [3, undefined, null, item]);
    assert.equal(from_list(list)[0], item);
    assert.equal(from_reversed_list(list)[3], item);
    assert.deepEqual([...list], values);
    assert.notEqual(from_list(list), from_list(list));
    assert.deepEqual(from_list(toList([])), []);
    assert.deepEqual(from_reversed_list(toList([])), []);
});
