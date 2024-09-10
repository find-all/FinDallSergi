import 'package:fin_dall/features/chat_bot/presentation/recomend_view/widgets/chat_buttons.dart';
import 'package:fin_dall/features/chat_bot/presentation/recomend_view/widgets/chat_carousel.dart';

import 'package:fin_dall/features/chat_bot/presentation/recomend_view/widgets/chat_welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/widgets/chat_initial_header.dart';

class ChatInitialView extends ConsumerWidget {
  const ChatInitialView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar:  ChatInitialHeader(),
      resizeToAvoidBottomInset: true,
      body:Column(
          children: [
            // El contenido principal que se ajusta al tamaño disponible
             Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ChatWelcomeText(),
                  SizedBox(height: 10),
                  ChatCarousel(),
                  SizedBox(height: 10),
                  ChatButtons(),
                ],
              ),
            ),
            // Añade Padding para separar el TextInput del borde inferior
          ],
        ),
      );
  }
}


