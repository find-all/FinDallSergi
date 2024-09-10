import 'package:uuid/v4.dart';

class FileUtils {
  static String getFileExtension(String fileName) {
    return fileName.split('.').last;
  }

  static String getFileName(String filePath) {
    return filePath.split('/').last;
  }

  static String generateFileName(String oldFileName) {
    final extension = getFileExtension(oldFileName);
    final uuid = const UuidV4().generate();
    return '$uuid.$extension';
  }
}
