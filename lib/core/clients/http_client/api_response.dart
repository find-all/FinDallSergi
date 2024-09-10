sealed class ApiResponse {
  final Map<String, String> headers;

  const ApiResponse({
    required this.headers,
  });
}

final class MapApiResponse extends ApiResponse {
  final Map<String, dynamic> body;

  const MapApiResponse({
    required this.body,
    required super.headers,
  });
}

final class ListApiResponse extends ApiResponse {
  final List<dynamic> body;

  const ListApiResponse({
    required this.body,
    required super.headers,
  });
}

final class RawStringApiResponse extends ApiResponse {
  final String body;

  const RawStringApiResponse({
    required this.body,
    required super.headers,
  });
}

final class EmptyApiResponse extends ApiResponse {
  const EmptyApiResponse({
    required super.headers,
  });
}
