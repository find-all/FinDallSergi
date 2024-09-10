import 'package:fin_dall/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';

class ChatInitialHeader extends StatelessWidget implements PreferredSizeWidget {
  const ChatInitialHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const CustomAppBar(title: 'ChatBot'),
      medium: const ChatHeaderBase(title: 'Chat Medium', hasSearchIcon: true),
      defaultWidget: const ChatHeaderBase(title: 'Chat Extended', hasSearchIcon: true),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0); // Altura estándar del AppBar
}

class ChatHeaderBase extends StatelessWidget {
  final String title;
  final bool hasSearchIcon;

  const ChatHeaderBase({
    super.key,
    required this.title,
    this.hasSearchIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: hasSearchIcon
          ? [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Acción de búsqueda
                },
              ),
            ]
          : null,
    );
  }
}
