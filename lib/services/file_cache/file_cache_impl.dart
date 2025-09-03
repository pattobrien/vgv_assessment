import 'dart:io' as io;

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:file/memory.dart';
import 'package:path/path.dart' as path;

import 'file_cache.dart';
import 'file_not_found_exception.dart';
import 'saved_file.dart';

class FileCacheImpl implements FileCache {
  const FileCacheImpl({
    required this.root,
  });

  factory FileCacheImpl.memory() {
    final fs = MemoryFileSystem();
    return FileCacheImpl(root: fs.directory('/'));
  }

  factory FileCacheImpl.local(io.Directory root) {
    const fs = LocalFileSystem();
    return FileCacheImpl(root: fs.directory(root.path));
  }

  final Directory root;

  String _getFilePath(String filename) {
    return '${root.path}/$filename';
  }

  @override
  Future<List<SavedFile>> getFiles() async {
    final files = root.listSync().whereType<File>().toList();
    return files.map((file) {
      final filename = path.basename(file.path);
      return SavedFile(
        filename: filename,
        imageBytes: file.readAsBytesSync(),
      );
    }).toList();
  }

  @override
  Future<SavedFile?> getFile(String filename) async {
    final path = _getFilePath(filename);
    if (!root.childFile(path).existsSync()) {
      return null;
    }
    final bytes = await root.childFile(path).readAsBytes();
    return SavedFile(filename: filename, imageBytes: bytes);
  }

  @override
  Future<void> saveFile(SavedFile savedFile) async {
    final path = _getFilePath(savedFile.filename);
    await root.childFile(path).writeAsBytes(savedFile.imageBytes);
  }

  @override
  Future<void> deleteFile(String filename) async {
    final path = _getFilePath(filename);
    if (!root.childFile(path).existsSync()) {
      throw FileNotFoundException(path);
    }
    await root.childFile(path).delete();
  }
}
