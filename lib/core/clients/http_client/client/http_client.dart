import 'package:http/http.dart' as http;

class CustomHttpClient {
  static http.Client getHttpClient() {
    throw UnsupportedError(
        'Cannot create an http client without platform implementation.');
  }
}
