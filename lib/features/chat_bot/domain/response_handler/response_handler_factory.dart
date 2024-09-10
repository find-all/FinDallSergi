// domain/response_handler/response_handler_factory.dart

import 'package:fin_dall/features/chat_bot/domain/response_handler/response_handler.dart';

class ResponseHandlerFactory {
  ResponseHandler getHandler(int responseType) {
    switch (responseType) {
      case 0:
        return CompactResponseHandler();
      case 1:
        return ContactResponseHandler();
      case 2:
        return ImageResponseHandler();
      case 3:
        return LocationResponseHandler();
      default:
        return CompactResponseHandler(); // Manejador por defecto para texto simple
    }
  }
}
