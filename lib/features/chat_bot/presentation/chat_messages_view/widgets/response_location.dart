import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para la extensión de responsividad

class ResponseLocation extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final double rating;
  final double distance;
  final LatLng coordinates;

  const ResponseLocation({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.rating,
    required this.distance,
    required this.coordinates,
  });

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: ResponseLocationBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        distance: distance,
        coordinates: coordinates,
        logoSize: 40.0,
        fontSize: 14.0,
        mapHeight: 150.0,
        padding: const EdgeInsets.all(8.0),
      ),
      medium: ResponseLocationBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        distance: distance,
        coordinates: coordinates,
        logoSize: 50.0,
        fontSize: 16.0,
        mapHeight: 200.0,
        padding: const EdgeInsets.all(12.0),
      ),
      defaultWidget: ResponseLocationBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        distance: distance,
        coordinates: coordinates,
        logoSize: 60.0,
        fontSize: 18.0,
        mapHeight: 250.0,
        padding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class ResponseLocationBase extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final double rating;
  final double distance;
  final LatLng coordinates;
  final double logoSize;
  final double fontSize;
  final double mapHeight;
  final EdgeInsets padding;

  const ResponseLocationBase({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.rating,
    required this.distance,
    required this.coordinates,
    required this.logoSize,
    required this.fontSize,
    required this.mapHeight,
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
            "La empresa cuenta con múltiples horarios de atención y actualmente se encuentra disponible para brindar servicio a los clientes.",
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
                        imageUrl,
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
                            : 'Nombre no disponible',
                        style: TextStyle(
                          fontSize: fontSize + 2,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${distance.toStringAsFixed(1)} metros",
                      style: TextStyle(fontSize: fontSize),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acción para abrir Google Maps o Apple Maps con las direcciones
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[100],
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      icon: const Icon(Icons.navigation_rounded,
                          color: Colors.black),
                      label: Text(
                        "Iniciar",
                        style:
                            TextStyle(color: Colors.black, fontSize: fontSize),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                // Mapa con pin en las coordenadas
                Container(
                  height: mapHeight,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: coordinates,
                        zoom: 15.0,
                      ),
                      markers: {
                        Marker(
                          markerId: MarkerId(companyName),
                          position: coordinates,
                          infoWindow: InfoWindow(
                            title: companyName,
                            snippet: 'Calificación: $rating',
                          ),
                        ),
                      },
                    ),
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
