import wechat/storage

pub fn storage_test() {
  let _ = storage.create_buffer_url
  let _ = storage.revoke_buffer_url
  let _ = storage.batch_set_storage
  let _ = storage.batch_set_storage_sync
  let _ = storage.batch_get_storage
  let _ = storage.batch_get_storage_sync
  let _ = storage.set_storage_sync
  let _ = storage.get_storage_sync
  let _ = storage.remove_storage_sync
  let _ = storage.clear_storage_sync
  let _ = storage.create_cache_manager
  let _ = storage.cache_manager_add_rule
  let _ = storage.cache_manager_add_rules
  let _ = storage.cache_manager_clear_caches
  let _ = storage.cache_manager_clear_rules
  let _ = storage.cache_manager_delete_cache
  let _ = storage.cache_manager_delete_caches
  let _ = storage.cache_manager_delete_rule
  let _ = storage.cache_manager_delete_rules
  let _ = storage.cache_manager_match
  let _ = storage.cache_manager_off
  let _ = storage.cache_manager_on
  let _ = storage.cache_manager_start
  let _ = storage.cache_manager_stop
}
