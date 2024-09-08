import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para la extensión de responsividad

class ResponseCompact extends StatelessWidget {
  final List<Map<String, String>> items;

  const ResponseCompact({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: ResponseCompactBase(
        items: items,
        imageHeight: 120.0,
        imageWidth: 160.0,
        titleFontSize: 14.0,
        subtitleFontSize: 12.0,
        padding: const EdgeInsets.all(8.0),
      ),
      medium: ResponseCompactBase(
        items: items,
        imageHeight: 150.0,
        imageWidth: 200.0,
        titleFontSize: 16.0,
        subtitleFontSize: 14.0,
        padding: const EdgeInsets.all(12.0),
      ),
      defaultWidget: ResponseCompactBase(
        items: items,
        imageHeight: 180.0,
        imageWidth: 220.0,
        titleFontSize: 18.0,
        subtitleFontSize: 16.0,
        padding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class ResponseCompactBase extends StatelessWidget {
  final List<Map<String, String>> items;
  final double imageHeight;
  final double imageWidth;
  final double titleFontSize;
  final double subtitleFontSize;
  final EdgeInsets padding;

  const ResponseCompactBase({
    super.key,
    required this.items,
    required this.imageHeight,
    required this.imageWidth,
    required this.titleFontSize,
    required this.subtitleFontSize,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aquí tienes algunas opciones disponibles:",
            style: TextStyle(
              color: Colors.black,
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          // Envolvemos los elementos en un scroll horizontal
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          item['imageUrl']!,
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item['title']!,
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item['subtitle']!,
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            item['rating']!,
                            style: TextStyle(fontSize: subtitleFontSize),
                          ),
                          const Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
