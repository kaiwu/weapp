//// filesystem module provides file system API bindings
//// details in [wechat document](https://developers.weixin.qq.com/miniprogram/dev/api/file/)
////

import gleam/javascript/promise.{type Promise}
import wechat/object.{type JsObject, type WechatCallback, type WechatResult}

/// `wx.getFileSystemManager`
/// Get the file system manager object
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "getFileSystemManager")
pub fn get_file_system_manager() -> JsObject

/// Phase 11: File Advanced
///
/// `wx.saveFileToDisk`
/// Save a temporary file to local disk
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "saveFileToDisk")
pub fn save_file_to_disk(
  temp_file_path t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.access`
/// Check if a file exists
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerAccess")
pub fn access(
  fsm: JsObject,
  path p: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.accessSync`
/// Synchronously check if a file exists
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerAccessSync")
pub fn access_sync(fsm: JsObject, path p: String) -> Nil

/// `FileSystemManager.appendFile`
/// Append content to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerAppendFile")
pub fn append_file(
  fsm: JsObject,
  path p: String,
  data d: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.appendFileSync`
/// Synchronously append content to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerAppendFileSync")
pub fn append_file_sync(fsm: JsObject, path p: String, data d: JsObject) -> Nil

/// `FileSystemManager.close`
/// Close a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerClose")
pub fn close(
  fsm: JsObject,
  fd: Float,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.closeSync`
/// Synchronously close a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerCloseSync")
pub fn close_sync(fsm: JsObject, fd: Float) -> Nil

/// `FileSystemManager.copyFile`
/// Copy a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerCopyFile")
pub fn copy_file(
  fsm: JsObject,
  src s: String,
  dest d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.copyFileSync`
/// Synchronously copy a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerCopyFileSync")
pub fn copy_file_sync(fsm: JsObject, src s: String, dest d: String) -> Nil

/// `FileSystemManager.fstat`
/// Get file statistics by file descriptor
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerFstat")
pub fn fstat(
  fsm: JsObject,
  fd: Float,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.fstatSync`
/// Synchronously get file statistics by file descriptor
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerFstatSync")
pub fn fstat_sync(fsm: JsObject, fd: Float, options o: JsObject) -> JsObject

/// `FileSystemManager.ftruncate`
/// Truncate a file by file descriptor
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerFtruncate")
pub fn ftruncate(
  fsm: JsObject,
  fd: Float,
  len: Int,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.ftruncateSync`
/// Synchronously truncate a file by file descriptor
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerFtruncateSync")
pub fn ftruncate_sync(
  fsm: JsObject,
  fd: Float,
  len: Int,
  options o: JsObject,
) -> Nil

/// `FileSystemManager.getFileInfo`
/// Get file information
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerGetFileInfo")
pub fn get_file_info(
  fsm: JsObject,
  path p: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.getSavedFileList`
/// Get list of saved files
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerGetSavedFileList")
pub fn get_saved_file_list(
  fsm: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.mkdir`
/// Create a directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerMkdir")
pub fn mkdir(
  fsm: JsObject,
  dir d: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.mkdirSync`
/// Synchronously create a directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerMkdirSync")
pub fn mkdir_sync(fsm: JsObject, dir d: String, options o: JsObject) -> Nil

/// Create a directory with the native recursive boolean. The original
/// `mkdir_sync` argument type and labels remain available for existing callers.
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerMkdirSync")
pub fn mkdir_recursive_sync(
  fsm: JsObject,
  dir d: String,
  recursive r: Bool,
) -> Nil

/// `FileSystemManager.open`
/// Open a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerOpen")
pub fn open(
  fsm: JsObject,
  path p: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.openSync`
/// Synchronously open a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerOpenSync")
pub fn open_sync(fsm: JsObject, path p: String, options o: JsObject) -> Float

/// `FileSystemManager.read`
/// Read from a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRead")
pub fn read(
  fsm: JsObject,
  fd: Float,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.readSync`
/// Synchronously read from a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadSync")
pub fn read_sync(fsm: JsObject, fd: Float, options o: JsObject) -> JsObject

/// `FileSystemManager.readCompressedFile`
/// Read a compressed file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadCompressedFile")
pub fn read_compressed_file(
  fsm: JsObject,
  path p: String,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.readCompressedFileSync`
/// Synchronously read a compressed file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadCompressedFileSync")
pub fn read_compressed_file_sync(
  fsm: JsObject,
  path p: String,
  options o: JsObject,
) -> JsObject

/// `FileSystemManager.readdir`
/// Read directory contents
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReaddir")
pub fn readdir(
  fsm: JsObject,
  dir d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.readdirSync`
/// Synchronously read directory contents
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReaddirSync")
pub fn readdir_sync(fsm: JsObject, dir d: String) -> JsObject

/// `FileSystemManager.readFile`
/// Read a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadFile")
pub fn read_file(
  fsm: JsObject,
  path p: String,
  encoding e: String,
  position pos: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.readFileSync`
/// Synchronously read a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadFileSync")
pub fn read_file_sync(
  fsm: JsObject,
  path p: String,
  encoding e: String,
  position pos: Int,
) -> JsObject

/// `FileSystemManager.removeSavedFile`
/// Remove a saved file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRemoveSavedFile")
pub fn remove_saved_file(
  fsm: JsObject,
  file f: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.rename`
/// Rename a file or directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRename")
pub fn rename(
  fsm: JsObject,
  old_path o: String,
  new_path n: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.renameSync`
/// Synchronously rename a file or directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRenameSync")
pub fn rename_sync(fsm: JsObject, old_path o: String, new_path n: String) -> Nil

/// `FileSystemManager.rmdir`
/// Remove a directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRmdir")
pub fn rmdir(
  fsm: JsObject,
  dir d: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.rmdirSync`
/// Synchronously remove a directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerRmdirSync")
pub fn rmdir_sync(fsm: JsObject, dir d: String) -> Nil

/// `FileSystemManager.saveFile`
/// Save a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerSaveFile")
pub fn save_file(
  fsm: JsObject,
  temp_file_path t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.saveFileSync`
/// Synchronously save a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerSaveFileSync")
pub fn save_file_sync(fsm: JsObject, temp_file_path t: String) -> String

/// `FileSystemManager.stat`
/// Get file statistics
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerStat")
pub fn stat(
  fsm: JsObject,
  path p: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.statSync`
/// Synchronously get file statistics
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerStatSync")
pub fn stat_sync(fsm: JsObject, path p: String) -> JsObject

/// `FileSystemManager.unlink`
/// Delete a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerUnlink")
pub fn unlink(
  fsm: JsObject,
  file f: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.unlinkSync`
/// Synchronously delete a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerUnlinkSync")
pub fn unlink_sync(fsm: JsObject, file f: String) -> Nil

/// `FileSystemManager.unzip`
/// Unzip a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerUnzip")
pub fn unzip(
  fsm: JsObject,
  zip_path z: String,
  target_path t: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.write`
/// Write to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerWrite")
pub fn write(
  fsm: JsObject,
  fd: Float,
  data d: JsObject,
  options o: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.writeSync`
/// Synchronously write to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerWriteSync")
pub fn write_sync(
  fsm: JsObject,
  fd: Float,
  data d: JsObject,
  options o: JsObject,
) -> Int

/// `FileSystemManager.writeFile`
/// Write to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerWriteFile")
pub fn write_file(
  fsm: JsObject,
  path p: String,
  data d: JsObject,
  encoding e: String,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.writeFileSync`
/// Synchronously write to a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerWriteFileSync")
pub fn write_file_sync(
  fsm: JsObject,
  path p: String,
  data d: JsObject,
  encoding e: String,
) -> Nil

/// Phase 21: File Advanced
///
/// `FileSystemManager.truncate`
/// Truncate a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerTruncate")
pub fn truncate(
  fsm: JsObject,
  path p: String,
  length l: Int,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// `FileSystemManager.truncateSync`
/// Synchronously truncate a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerTruncateSync")
pub fn truncate_sync(fsm: JsObject, path p: String, length l: Int) -> Nil

/// `FileSystemManager.readZipEntry`
/// Read ZIP archive entry
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "fileSystemManagerReadZipEntry")
pub fn read_zip_entry(
  fsm: JsObject,
  file_path fp: String,
  encoding e: String,
  entries en: JsObject,
  complete cb: WechatCallback,
) -> Promise(WechatResult)

/// Stats type for file statistics
///
pub type Stats

/// `Stats.isDirectory`
/// Check if path is a directory
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "statsIsDirectory")
pub fn stats_is_directory(stats: Stats) -> Bool

/// `Stats.isFile`
/// Check if path is a file
///
@external(javascript, "../wechat_filesystem_ffi.mjs", "statsIsFile")
pub fn stats_is_file(stats: Stats) -> Bool
