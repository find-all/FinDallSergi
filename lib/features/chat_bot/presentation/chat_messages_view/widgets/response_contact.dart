import 'package:flutter/material.dart';

class ResponseContact extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final double rating;
  final String phone;
  final String email;

  const ResponseContact({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.rating,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Aquí tienes los datos de contacto que me has pedido de la empresa.",
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
              // Foto, Nombre de la Empresa y Rating en una fila centrada
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
                          overflow: TextOverflow.ellipsis,  // Añadir puntos suspensivos
                          softWrap: false,
                          maxLines: 2,  // Limitar a 2 línea
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
              // Teléfono de contacto con ícono
              Row(
                children: [
                  const Icon(Icons.phone, size: 20, color: Colors.black54),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      phone,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,  // Añadir puntos suspensivos si el número es muy largo
                      softWrap: false,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              // Correo electrónico con ícono
              Row(
                children: [
                  const Icon(Icons.email, size: 20, color: Colors.black54),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      email,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,  // Añadir puntos suspensivos para el correo
                      softWrap: false,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
