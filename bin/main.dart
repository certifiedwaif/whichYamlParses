import 'dart:io';
import 'package:whichYamlParses/whichYamlParses.dart' as whichYamlParses;
import 'package:yaml/yaml.dart';

main(List<String> arguments) {
  final yamlFiles = whichYamlParses.yamlFiles(arguments[0]);
  var correct = 0;

  for (var yamlFile in yamlFiles) {
    try {
      final doc = loadYaml(File(yamlFile.path).readAsStringSync());
      correct++;
    } catch (e) {
      print("${yamlFile.path} didn't parse");
      print('$e');
    }
  }
  print(
      '$correct out of ${yamlFiles.length} (${100.0 * (correct / yamlFiles.length)}%) files parsed.');
}
