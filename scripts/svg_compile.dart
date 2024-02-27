// Run this file when you want to pre-compile all the svg files in the given directory.
// Pre-compiling the svg files will create files with the extension .svg.vec in the given output directory.
// These files are faster in rendering than the original svg files.

// ignore_for_file: avoid_print

import 'dart:io';

Future<void> main() async {
  String ps = Platform.pathSeparator;
  Directory inputDirectory = Directory(
      '/Users/acksessionmacbook/Dev/work/flutter/packages/social_media_sign_in_buttons/lib/assets/svg_vec'); // Replace with the absolute path to the directory containing the svg files
  Directory outputDirectory = Directory(
    '/Users/acksessionmacbook/Dev/work/flutter/packages/social_media_sign_in_buttons/lib/assets/svg_vec',
  ); // Replace with the absolute path to the directory where you want to save the pre-compiled .svg.vec files
  // throw if the input directory does not exist or output directory does not exist
  if (!inputDirectory.existsSync()) {
    throw Exception('Input directory does not exist');
  }
  if (!outputDirectory.existsSync()) {
    throw Exception('Output directory does not exist');
  }
  // get all svg files
  List<File> files = inputDirectory
      .listSync(recursive: true)
      .whereType<File>()
      .where((File file) => file.path.endsWith('.svg'))
      .toList();
  // for each svg file, run the command `dart run vector_graphics_compiler -i path/to/svg/file.svg -o assets/images/precompiled_svgs/filename.svg.vec`
  for (File file in files) {
    String fileName = file.path.split(ps).last;
    String fileNameWithoutExtension = fileName.split('.').first;
    // String command =
    //     'dart run vector_graphics_compiler -i ${file.path} -o assets${ps}images${ps}precompiled_svg$ps$directoryName$ps$fileNameWithoutExtension.svg.vec';
    String command =
        'dart run vector_graphics_compiler -i ${file.path} -o ${outputDirectory.path}$ps$fileNameWithoutExtension.svg.vec';
    print(command);
    ProcessResult result;
    if (Platform.isWindows) {
      result = Process.runSync('cmd', ['/c', command]);
    } else if (Platform.isLinux) {
      result = Process.runSync('bash', ['-c', command]);
    } else if (Platform.isMacOS) {
      result = Process.runSync('bash', ['-c', command]);
    } else {
      throw Exception('Unsupported platform');
    }
    print(result.stdout);
  }
}
