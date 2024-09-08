import 'package:fin_dall/core/widgets/chat_initial_header.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/custom_chat_bubble.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_compact.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_contact.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_location.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/response_images.dart'; // Importamos el nuevo widget
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para manejar la responsividad
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Importación del mapa

class ChatMessagesView extends ConsumerWidget {
  const ChatMessagesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Usamos getResponsiveWidget para mostrar la vista de móvil o tablet
    return context.getResponsiveWidget(
      compact: _buildMobileLayout(context, ref),  // Vista para móviles
      defaultWidget: _buildTabletLayout(context, ref), // Vista para tabletas
    );
  }

  // Layout para Móviles
  Widget _buildMobileLayout(BuildContext context, WidgetRef ref) {
    final List<Message> mobileMessages = [
      // Mensaje de texto
      Message(
        content: Text(
          "Hola, ¿puedes ayudarme?",
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ),
      Message(
        content: Text(
          "Claro, ¿en qué necesitas ayuda?",
          style: const TextStyle(color: Colors.black),
        ),
        isSentByUser: false,
      ),
      Message(
        content: Text(
          "Estoy buscando empresas de riego.",
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ),
      // Mensaje con scroll horizontal usando ResponseCompact
      Message(
        content: const ResponseCompact(
          items: [
            {
              'imageUrl': 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
              'title': 'Seguiment Cerdanya',
              'subtitle': 'Jardinería en Cerdanya',
              'rating': '4.5',
            },
            {
              'imageUrl': 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
              'title': 'Segona Empresa',
              'subtitle': 'Servicio en Cerdanya',
              'rating': '4.2',
            },
          ],
        ),
        isSentByUser: false,
      ),
      // Mensaje de contacto usando ResponseContact
      Message(
        content: ResponseContact(
          imageUrl: 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          phone: '608 14 15 59',
          email: 'segui@seguimentcerdanya.com',
        ),
        isSentByUser: false,
      ),
      // Mensaje de imágenes usando ResponseImages
      Message(
        content: ResponseImages(
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          imageUrls: [
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          ],
        ),
        isSentByUser: false,
      ),
      // Mensaje de ubicación usando ResponseLocation
      Message(
        content: ResponseLocation(
          imageUrl: 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          distance: 500.0,
          coordinates: LatLng(42.4147, 1.5732),
        ),
        isSentByUser: false,
      ),
    ];

    return Scaffold(
      appBar: const ChatInitialHeader(),
      body: Column(
        children: [
          Expanded(
            child: CustomChatBubble(messages: mobileMessages), // Usamos CustomChatBubble
          ),
        ],
      ),
    );
  }

  // Layout para Tabletas
  Widget _buildTabletLayout(BuildContext context, WidgetRef ref) {
    final List<Message> tabletMessages = [
      // Mensaje de texto
      Message(
        content: Text(
          "Hola, ¿puedes ayudarme?",
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ),
      Message(
        content: Text(
          "Claro, ¿en qué necesitas ayuda?",
          style: const TextStyle(color: Colors.black),
        ),
        isSentByUser: false,
      ),
      Message(
        content: Text(
          "Estoy buscando empresas de riego.",
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ),
      // Mensaje con scroll horizontal usando ResponseCompact
      Message(
        content: const ResponseCompact(
          items: [
            {
              'imageUrl': 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
              'title': 'Seguiment Cerdanya',
              'subtitle': 'Jardinería en Cerdanya',
              'rating': '4.5',
            },
            {
              'imageUrl': 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
              'title': 'Segona Empresa',
              'subtitle': 'Servicio en Cerdanya',
              'rating': '4.2',
            },
            {
              'imageUrl': 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
              'title': 'Tercera Empresa',
              'subtitle': 'Otro Servicio',
              'rating': '4.8',
            },
          ],
        ),
        isSentByUser: false,
      ),
      // Mensaje de contacto usando ResponseContact
      Message(
        content: ResponseContact(
          imageUrl: 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          phone: '608 14 15 59',
          email: 'segui@seguimentcerdanya.com',
        ),
        isSentByUser: false,
      ),
      // Mensaje de imágenes usando ResponseImages
      Message(
        content: ResponseImages(
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          imageUrls: [
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
            'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          ],
        ),
        isSentByUser: false,
      ),
      // Mensaje de ubicación usando ResponseLocation
      Message(
        content: ResponseLocation(
          imageUrl: 'https://www.hotelscerdanya.com/media/cerdanya/lles/lles-top.jpg',
          companyName: 'Seguiment Cerdanya',
          rating: 4.5,
          distance: 500.0,
          coordinates: LatLng(42.4147, 1.5732),
        ),
        isSentByUser: false,
      ),
      // Mensajes adicionales
      Message(
        content: Text(
          "Gracias, ¿puedes encontrar más detalles?",
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ),
      Message(
        content: Text(
          "Claro, déjame buscar.",
          style: const TextStyle(color: Colors.black),
        ),
        isSentByUser: false,
      ),
    ];

    return Scaffold(
      appBar: const ChatInitialHeader(),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomChatBubble(messages: tabletMessages), // Usamos CustomChatBubble
          ),
        ],
      ),
    );
  }
}
