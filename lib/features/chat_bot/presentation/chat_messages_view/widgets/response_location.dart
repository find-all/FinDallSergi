import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "La empresa cuenta con múltiples horarios de atención y actualmente se encuentra disponible para brindar servicio a los clientes. Está abierto ahora y cierran a las 20:00.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
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
              // Información de la empresa
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      imageUrl,
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        rating.toString(),
                        style: const TextStyle(fontSize: 14),
                      ),
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // Distancia y botón de direcciones como icono con texto
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${distance.toStringAsFixed(1)} metros",
                    style: const TextStyle(fontSize: 14),
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
                    icon: const Icon(Icons.navigation_rounded, color: Colors.black),
                    label: const Text(
                      "Iniciar",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // Mapa con pin en las coordenadas
              Container(
                height: 200.0,
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
    );
  }
}
