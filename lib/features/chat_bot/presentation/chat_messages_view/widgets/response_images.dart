import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para la extensión de responsividad

class ResponseImages extends StatelessWidget {
  final String companyName;
  final double rating;
  final List<String> imageUrls;

  const ResponseImages({
    super.key,
    required this.companyName,
    required this.rating,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: ResponseImagesBase(
        companyName: companyName,
        rating: rating,
        imageUrls: imageUrls,
        logoSize: 40.0,
        imageHeight: 120.0,
        imageWidth: 140.0,
        fontSize: 14.0,
        padding: const EdgeInsets.all(8.0),
      ),
      medium: ResponseImagesBase(
        companyName: companyName,
        rating: rating,
        imageUrls: imageUrls,
        logoSize: 50.0,
        imageHeight: 150.0,
        imageWidth: 180.0,
        fontSize: 16.0,
        padding: const EdgeInsets.all(12.0),
      ),
      defaultWidget: ResponseImagesBase(
        companyName: companyName,
        rating: rating,
        imageUrls: imageUrls,
        logoSize: 60.0,
        imageHeight: 180.0,
        imageWidth: 220.0,
        fontSize: 18.0,
        padding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class ResponseImagesBase extends StatelessWidget {
  final String companyName;
  final double rating;
  final List<String> imageUrls;
  final double logoSize;
  final double imageHeight;
  final double imageWidth;
  final double fontSize;
  final EdgeInsets padding;

  const ResponseImagesBase({
    super.key,
    required this.companyName,
    required this.rating,
    required this.imageUrls,
    required this.logoSize,
    required this.imageHeight,
    required this.imageWidth,
    required this.fontSize,
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
            "Aquí tienes las imágenes de la empresa",
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageUrls.isNotEmpty
                            ? imageUrls[0]
                            : '', // Verificación si hay imágenes
                        height: logoSize,
                        width: logoSize,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error,
                              size:
                                  40); // Mostrar error si no se carga la imagen
                        },
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Text(
                        companyName.isNotEmpty
                            ? companyName
                            : 'Nombre no disponible', // Verificación de valores vacíos
                        style: TextStyle(
                          fontSize: fontSize + 2, // Título un poco más grande
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        maxLines: 1,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          rating.toString(),
                          style: TextStyle(fontSize: fontSize),
                        ),
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                // Scroll horizontal de imágenes
                SizedBox(
                  height: imageHeight, // Altura de las imágenes
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            imageUrls[index],
                            fit: BoxFit.cover,
                            width: imageWidth, // Ancho de cada imagen
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.error,
                                  size: 40); // Manejador de errores
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
