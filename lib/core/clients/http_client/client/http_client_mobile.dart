import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart' as http;

class CustomHttpClient {
  static http.Client getHttpClient() {
    if (Platform.isAndroid) {
      return CronetClient.fromCronetEngine(
        CronetEngine.build(
          cacheMode: CacheMode.memory,
          cacheMaxSize: 1000000,
        ),
      );
    } else {
      final config = URLSessionConfiguration.ephemeralSessionConfiguration()
        ..cache = URLCache.withCapacity(memoryCapacity: 1000000);
      return CupertinoClient.fromSessionConfiguration(config);
    }
  }
}
