import 'dart:io';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;

List<FileSystemEntity> yamlFiles(String path) {
  var globPath = p.join(path, '**.yaml');
  return Glob(globPath).listSync();
}
