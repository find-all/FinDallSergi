import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para la extensión de responsividad

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
    return context.getResponsiveWidget(
      compact: ResponseContactBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        phone: phone,
        email: email,
        logoSize: 40.0,
        fontSize: 14.0,
        padding: const EdgeInsets.all(8.0),
      ),
      medium: ResponseContactBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        phone: phone,
        email: email,
        logoSize: 50.0,
        fontSize: 16.0,
        padding: const EdgeInsets.all(12.0),
      ),
      defaultWidget: ResponseContactBase(
        imageUrl: imageUrl,
        companyName: companyName,
        rating: rating,
        phone: phone,
        email: email,
        logoSize: 60.0,
        fontSize: 18.0,
        padding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class ResponseContactBase extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final double rating;
  final String phone;
  final String email;
  final double logoSize;
  final double fontSize;
  final EdgeInsets padding;

  const ResponseContactBase({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.rating,
    required this.phone,
    required this.email,
    required this.logoSize,
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
            "Aquí tienes los datos de contacto que me has pedido de la empresa.",
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
                // Foto, Nombre de la Empresa y Rating en una fila centrada
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageUrl,
                        height: logoSize,
                        width: logoSize,
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
                            style: TextStyle(
                              fontSize: fontSize + 2, // Título ligeramente más grande
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis, // Añadir puntos suspensivos
                            softWrap: false,
                            maxLines: 2, // Limitar a 2 líneas
                          ),
                        ],
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
                // Teléfono de contacto con ícono
                Row(
                  children: [
                    const Icon(Icons.phone, size: 20, color: Colors.black54),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        phone,
                        style: TextStyle(fontSize: fontSize),
                        overflow: TextOverflow.ellipsis, // Añadir puntos suspensivos si el número es muy largo
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
                        style: TextStyle(fontSize: fontSize),
                        overflow: TextOverflow.ellipsis, // Añadir puntos suspensivos para el correo
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
      ),
    );
  }
}
