import wechat/filesystem

pub fn filesystem_test() {
  let _ = filesystem.get_file_system_manager
  let _ = filesystem.save_file_to_disk
  let _ = filesystem.access
  let _ = filesystem.access_sync
  let _ = filesystem.append_file
  let _ = filesystem.append_file_sync
  let _ = filesystem.close
  let _ = filesystem.close_sync
  let _ = filesystem.copy_file
  let _ = filesystem.copy_file_sync
  let _ = filesystem.fstat
  let _ = filesystem.fstat_sync
  let _ = filesystem.ftruncate
  let _ = filesystem.ftruncate_sync
  let _ = filesystem.get_file_info
  let _ = filesystem.get_saved_file_list
  let _ = filesystem.mkdir
  let _ = filesystem.mkdir_sync
  let _ = filesystem.open
  let _ = filesystem.open_sync
  let _ = filesystem.read
  let _ = filesystem.read_sync
  let _ = filesystem.read_compressed_file
  let _ = filesystem.read_compressed_file_sync
  let _ = filesystem.readdir
  let _ = filesystem.readdir_sync
  let _ = filesystem.read_file
  let _ = filesystem.read_file_sync
  let _ = filesystem.remove_saved_file
  let _ = filesystem.rename
  let _ = filesystem.rename_sync
  let _ = filesystem.rmdir
  let _ = filesystem.rmdir_sync
  let _ = filesystem.save_file
  let _ = filesystem.save_file_sync
  let _ = filesystem.stat
  let _ = filesystem.stat_sync
  let _ = filesystem.unlink
  let _ = filesystem.unlink_sync
  let _ = filesystem.unzip
  let _ = filesystem.write
  let _ = filesystem.write_sync
  let _ = filesystem.write_file
  let _ = filesystem.write_file_sync
  let _ = filesystem.truncate
  let _ = filesystem.truncate_sync
  let _ = filesystem.read_zip_entry
}

pub fn stats_test() {
  let _ = filesystem.stats_is_directory
  let _ = filesystem.stats_is_file
}
