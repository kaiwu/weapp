import { NonEmpty } from './gleam.mjs';

export function from_list(items) {
    const output = [];
    for (let cursor = items; cursor instanceof NonEmpty; cursor = cursor.tail) {
        output.push(cursor.head);
    }
    return output;
}
export function from_reversed_list(items) {
    return from_list(items).reverse();
}
