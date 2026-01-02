import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

// FileSystem Manager

export function getFileSystemManager() {
  return wx.getFileSystemManager();
}

export function fileSystemManagerAccess(fsm, path, cb) {
  return new Promise(resolve => {
    fsm.access({
      path: path,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerAccessSync(fsm, path) {
  fsm.accessSync(path);
}

export function fileSystemManagerAppendFile(fsm, path, data, cb) {
  return new Promise(resolve => {
    fsm.appendFile({
      filePath: path,
      data: data,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerAppendFileSync(fsm, path, data) {
  fsm.appendFileSync(path, data);
}

export function fileSystemManagerClose(fsm, fd, cb) {
  return new Promise(resolve => {
    fsm.close({
      fd: fd,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerCloseSync(fsm, fd) {
  fsm.closeSync(fd);
}

export function fileSystemManagerCopyFile(fsm, src, dest, cb) {
  return new Promise(resolve => {
    fsm.copyFile({
      srcPath: src,
      destPath: dest,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerCopyFileSync(fsm, src, dest) {
  fsm.copyFileSync(src, dest);
}

export function fileSystemManagerFstat(fsm, fd, options, cb) {
  return new Promise(resolve => {
    fsm.fstat({
      fd: fd,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerFstatSync(fsm, fd, options) {
  return fsm.fstatSync(fd, options);
}

export function fileSystemManagerFtruncate(fsm, fd, len, options, cb) {
  return new Promise(resolve => {
    fsm.ftruncate({
      fd: fd,
      length: len,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerFtruncateSync(fsm, fd, len, options) {
  fsm.ftruncateSync(fd, len, options);
}

export function fileSystemManagerGetFileInfo(fsm, path, options, cb) {
  return new Promise(resolve => {
    fsm.getFileInfo({
      filePath: path,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerGetSavedFileList(fsm, cb) {
  return new Promise(resolve => {
    fsm.getSavedFileList({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerMkdir(fsm, dir, options, cb) {
  return new Promise(resolve => {
    fsm.mkdir({
      dirPath: dir,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerMkdirSync(fsm, dir, options) {
  fsm.mkdirSync(dir, options);
}

export function fileSystemManagerOpen(fsm, path, options, cb) {
  return new Promise(resolve => {
    fsm.open({
      filePath: path,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerOpenSync(fsm, path, options) {
  return fsm.openSync(path, options);
}

export function fileSystemManagerRead(fsm, fd, options, cb) {
  return new Promise(resolve => {
    fsm.read({
      fd: fd,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerReadSync(fsm, fd, options) {
  return fsm.readSync(fd, options);
}

export function fileSystemManagerReadCompressedFile(fsm, path, options, cb) {
  return new Promise(resolve => {
    fsm.readCompressedFile({
      filePath: path,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerReadCompressedFileSync(fsm, path, options) {
  return fsm.readCompressedFileSync(path, options);
}

export function fileSystemManagerReaddir(fsm, dir, cb) {
  return new Promise(resolve => {
    fsm.readdir({
      dirPath: dir,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerReaddirSync(fsm, dir) {
  return fsm.readdirSync(dir);
}

export function fileSystemManagerReadFile(fsm, path, encoding, position, cb) {
  return new Promise(resolve => {
    fsm.readFile({
      filePath: path,
      encoding: encoding,
      position: position,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerReadFileSync(fsm, path, encoding, position) {
  return fsm.readFileSync(path, encoding, position);
}

export function fileSystemManagerRemoveSavedFile(fsm, file, cb) {
  return new Promise(resolve => {
    fsm.removeSavedFile({
      filePath: file,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerRename(fsm, oldPath, newPath, cb) {
  return new Promise(resolve => {
    fsm.rename({
      oldPath: oldPath,
      newPath: newPath,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerRenameSync(fsm, oldPath, newPath) {
  fsm.renameSync(oldPath, newPath);
}

export function fileSystemManagerRmdir(fsm, dir, cb) {
  return new Promise(resolve => {
    fsm.rmdir({
      dirPath: dir,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerRmdirSync(fsm, dir) {
  fsm.rmdirSync(dir);
}

export function fileSystemManagerSaveFile(fsm, tempFilePath, cb) {
  return new Promise(resolve => {
    fsm.saveFile({
      tempFilePath: tempFilePath,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerSaveFileSync(fsm, tempFilePath) {
  return fsm.saveFileSync(tempFilePath);
}

export function fileSystemManagerStat(fsm, path, cb) {
  return new Promise(resolve => {
    fsm.stat({
      path: path,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerStatSync(fsm, path) {
  return fsm.statSync(path);
}

export function fileSystemManagerUnlink(fsm, file, cb) {
  return new Promise(resolve => {
    fsm.unlink({
      filePath: file,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerUnlinkSync(fsm, file) {
  fsm.unlinkSync(file);
}

export function fileSystemManagerUnzip(fsm, zipPath, targetPath, cb) {
  return new Promise(resolve => {
    fsm.unzip({
      zipFilePath: zipPath,
      targetPath: targetPath,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerWrite(fsm, fd, data, options, cb) {
  return new Promise(resolve => {
    fsm.write({
      fd: fd,
      data: data,
      ...options,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerWriteSync(fsm, fd, data, options) {
  return fsm.writeSync(fd, data, options);
}

export function fileSystemManagerWriteFile(fsm, path, data, encoding, cb) {
  return new Promise(resolve => {
    fsm.writeFile({
      filePath: path,
      data: data,
      encoding: encoding,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function fileSystemManagerWriteFileSync(fsm, path, data, encoding) {
  fsm.writeFileSync(path, data, encoding);
}

// Phase 11: File Advanced
export function saveFileToDisk(tempFilePath, cb) {
  return new Promise(resolve => {
    wx.saveFileToDisk({
      tempFilePath,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}
