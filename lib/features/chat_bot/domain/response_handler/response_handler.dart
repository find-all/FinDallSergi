// domain/response_handler/response_handler.dart
import 'dart:convert';
import 'package:fin_dall/features/chat_bot/presentation/chat/controllers/chat_state.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/custom_chat_bubble.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_compact.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_contact.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_images.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Clase base para los manejadores de respuestas
abstract class ResponseHandler {
  WidgetMessage handle(String response);
}

// Manejador para respuestas tipo 1 (producto compacto)
class CompactResponseHandler implements ResponseHandler {
  @override
  WidgetMessage handle(String response) {
    Map<String, dynamic> data = json.decode(response);

    // Extraer los items del JSON
    List<Map<String, String>> items = (data['items'] as List<dynamic>)
        .map((item) => {
              'imageUrl': item['imageUrl'] as String,
              'title': item['title'] as String,
              'subtitle': item['subtitle'] as String,
              'rating': item['rating'] as String,
            })
        .toList();
    print(items); // Muestra los items parseados correctamente

    // Montar el widget ResponseCompact con los items
    return WidgetMessage(
      CustomChatBubble(
        content: ResponseCompact(
          items: items,
        ),
        isSentByUser: false,
      ),
    );
  }
}

class ContactResponseHandler implements ResponseHandler {
  @override
  WidgetMessage handle(String response) {
    // Parsear la respuesta JSON
    Map<String, dynamic> data = json.decode(response);

    // Extraer el primer item de los datos JSON
    if (data['items'] != null && data['items'].isNotEmpty) {
      Map<String, dynamic> item = data['items'][0];

      // Construir el widget ResponseContact con los datos extraídos
      return WidgetMessage(
        CustomChatBubble(
          content: ResponseContact(
            imageUrl: item['imageUrl'] ?? '',
            companyName: item['companyName'] ?? 'Empresa no disponible',
            rating: (item['rating'] ?? 0.0).toDouble(),
            phone: item['phone'] ?? 'Teléfono no disponible',
            email: item['email'] ?? 'Correo no disponible',
          ),
          isSentByUser: false,
        ),
      );
    } else {
      // Si no hay items en los datos, devolver un mensaje vacío o error
      return WidgetMessage(
        const CustomChatBubble(
          content: Text('No se encontraron datos de contacto.'),
          isSentByUser: false,
        ),
      );
    }
  }
}

class ImageResponseHandler implements ResponseHandler {
  @override
  WidgetMessage handle(String response) {
    // Parsear la respuesta JSON
    Map<String, dynamic> data = json.decode(response);

    // Extraer los valores necesarios del JSON
    if (data['imageUrls'] != null && data['imageUrls'].isNotEmpty) {
      return WidgetMessage(
        CustomChatBubble(
          content: ResponseImages(
            companyName: data['companyName'] ?? 'Nombre no disponible',
            rating: (data['rating'] ?? 0.0).toDouble(),
            imageUrls: List<String>.from(data['imageUrls']),
          ),
          isSentByUser: false,
        ),
      );
    } else {
      // Si no hay imágenes, mostrar un mensaje de error o mensaje vacío
      return WidgetMessage(
        const CustomChatBubble(
          content: Text('No se encontraron imágenes para mostrar.'),
          isSentByUser: false,
        ),
      );
    }
  }
}

class LocationResponseHandler implements ResponseHandler {
  @override
  WidgetMessage handle(String response) {
    // Parsear la respuesta JSON
    Map<String, dynamic> data = json.decode(response);

    // Extraer los valores necesarios del JSON
    if (data['coordinates'] != null &&
        data['coordinates']['lat'] != null &&
        data['coordinates']['lng'] != null) {
      LatLng coordinates =
          LatLng(data['coordinates']['lat'], data['coordinates']['lng']);

      return WidgetMessage(
        CustomChatBubble(
          content: ResponseLocation(
            imageUrl: data['imageUrl'] ?? '',
            companyName: data['companyName'] ?? 'Nombre no disponible',
            rating: (data['rating'] ?? 0.0).toDouble(),
            distance: (data['distance'] ?? 0.0).toDouble(),
            coordinates: coordinates,
          ),
          isSentByUser: false,
        ),
      );
    } else {
      // Si no hay coordenadas válidas, mostrar un mensaje de error o vacío
      return WidgetMessage(
        const CustomChatBubble(
          content: Text('No se encontraron ubicaciones para mostrar.'),
          isSentByUser: false,
        ),
      );
    }
  }
}
