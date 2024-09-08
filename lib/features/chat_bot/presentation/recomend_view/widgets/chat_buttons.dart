import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ChatButtons extends StatelessWidget {
  const ChatButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const ButtonLayout(
        firstButtonLabel: '¿Qué sabores hay?',
        secondButtonLabel: 'Más tarde',
        thirdButtonLabel: '¡Sí, quiero un helado!',
        widthSpacing: 20,
        heightSpacing: 20,
      ),
      medium: const ButtonLayout(
        firstButtonLabel: 'Inicio',
        secondButtonLabel: 'Buscar',
        thirdButtonLabel: 'Ajustes',
        widthSpacing: 30,
        heightSpacing: 30,
      ),
      defaultWidget: const ButtonLayout(
        firstButtonLabel: 'Inicio',
        secondButtonLabel: 'Buscar',
        thirdButtonLabel: 'Ajustes',
        widthSpacing: 40,
        heightSpacing: 40,
      ),
    );
  }
}

class ButtonLayout extends StatelessWidget {
  final String firstButtonLabel;
  final String secondButtonLabel;
  final String thirdButtonLabel;
  final double widthSpacing;
  final double heightSpacing;

  const ButtonLayout({
    super.key,
    required this.firstButtonLabel,
    required this.secondButtonLabel,
    required this.thirdButtonLabel,
    required this.widthSpacing,
    required this.heightSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding horizontal
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                label: firstButtonLabel,
                onPressed: () {
                  // Acción para el primer botón
                },
              ),
              SizedBox(width: widthSpacing),
              CustomTextButton(
                label: secondButtonLabel,
                onPressed: () {
                  // Acción para el segundo botón
                },
              ),
            ],
          ),
          SizedBox(height: heightSpacing),
          // Tercer botón ocupando todo el ancho de la pantalla
          SizedBox(
            width: double.infinity,
            child: CustomTextButton(
              label: thirdButtonLabel,
              onPressed: () {
                // Acción para el tercer botón
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.theme.colorScheme.primary,
        foregroundColor: context.theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown, // Ajusta el texto al tamaño del botón
        child: Text(
          label,
          style: const TextStyle(fontSize: 16),
          maxLines: 1, // Limita a una línea
          overflow: TextOverflow.ellipsis, // Si es muy largo, agrega "..."
        ),
      ),
    );
  }
}
