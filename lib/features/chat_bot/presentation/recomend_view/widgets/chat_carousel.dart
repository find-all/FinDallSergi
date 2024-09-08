import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ChatCarousel extends StatelessWidget {
  const ChatCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const ChatCarouselBase(
        screenWidthFactor: 0.9,
        imageHeightFactor: 0.7,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        reverse: true,
      ),
      medium: const ChatCarouselBase(
        screenWidthFactor: 0.85,
        imageHeightFactor: 0.5,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      defaultWidget: const ChatCarouselBase(
        screenWidthFactor: 0.8,
        imageHeightFactor: 0.6,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
    );
  }
}

class ChatCarouselBase extends StatelessWidget {
  final double screenWidthFactor;
  final double imageHeightFactor;
  final double viewportFraction;
  final bool enlargeCenterPage;
  final bool enableInfiniteScroll;
  final bool reverse;

  const ChatCarouselBase({
    super.key,
    required this.screenWidthFactor,
    required this.imageHeightFactor,
    required this.viewportFraction,
    required this.enlargeCenterPage,
    required this.enableInfiniteScroll,
    this.reverse = false, // default is false, but compact uses true
  });

  @override
  Widget build(BuildContext context) {
    // Obtiene el tamaño de la pantalla del usuario
    final screenWidth = MediaQuery.of(context).size.width * screenWidthFactor;
    final imageHeight = screenWidth * imageHeightFactor;

    return Center(
      child: SizedBox(
        width: screenWidth,
        child: CarouselSlider(
          options: CarouselOptions(
            height: imageHeight, // Ajuste dinámico de la altura
            viewportFraction: viewportFraction, // Controla el espacio entre las imágenes
            enlargeCenterPage: enlargeCenterPage, // Las imágenes del centro se agrandan ligeramente
            enableInfiniteScroll: enableInfiniteScroll, // Habilita o no el scroll infinito
            reverse: reverse, // Controla la dirección del deslizamiento
          ),
          items: _carouselItems(imageHeight, screenWidth),
        ),
      ),
    );
  }
}

// Genera los ítems del carrusel ajustando la altura y ancho según sea necesario
List<Widget> _carouselItems(double height, double width) {
  return [
    Image.network(
      'https://gelateriaitalianadeliziosa.com/wp-content/uploads/2022/10/pexels-jonathan-cooper-10175400-640x321.jpg',
      fit: BoxFit.cover,
      height: height,
      width: width,
    ),
    Image.network(
      'https://gelateriaitalianadeliziosa.com/wp-content/uploads/2022/10/pexels-jonathan-cooper-10175400-640x321.jpg',
      fit: BoxFit.cover,
      height: height,
      width: width,
    ),
    Image.network(
      'https://gelateriaitalianadeliziosa.com/wp-content/uploads/2022/10/pexels-jonathan-cooper-10175400-640x321.jpg',
      fit: BoxFit.cover,
      height: height,
      width: width,
    ),
  ];
}
