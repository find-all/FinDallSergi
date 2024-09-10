import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart' as http;

class CustomHttpClient {
  static http.Client getHttpClient() {
    return FetchClient(
      cache: RequestCache.byDefault,
      mode: RequestMode.cors,
    );
  }
}
