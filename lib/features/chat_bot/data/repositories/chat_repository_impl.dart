import 'dart:async';

class ChatRepositoryImpl {
  Future<String> postMessage(String message) async {
    await Future.delayed(Duration(seconds: 2));

    // Usamos un switch-case para manejar diferentes casos de respuesta
    switch (message) {
      case "0":
        return '''
        {
          "type": 0,
          "items": [
            {
              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
              "title": "Producto 1",
              "subtitle": "Descripción breve del producto 1",
              "rating": "4.5"
            },
            {
              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
              "title": "Producto 2",
              "subtitle": "Descripción breve del producto 2",
              "rating": "4.2"
            },
            {
              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
              "title": "Producto 3",
              "subtitle": "Descripción breve del producto 3",
              "rating": "4.8"
            }
          ]
        }
        ''';

      case "1":
        return '''
  {
    "type": 1,
    "items": [
      {
        "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
        "companyName": "Empresa A",
        "rating": 4.7,
        "phone": "+1 234 567 890",
        "email": "contacto@empresa.com"
      }
    ]
  }
  ''';

      case "2":
        return '''
  {
    "type": 2,
    "companyName": "Empresa B",
    "rating": 4.8,
    "imageUrls": [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s"
    ]
  }
  ''';

      case "3":
        return '''
  {
    "type": 3,
    "companyName": "Empresa C",
    "rating": 4.5,
    "distance": 350.0,
    "coordinates": {
      "lat": 37.7749,
      "lng": -122.4194
    },
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaZxAZ1pwAa_Lhf5XGcvy4Yl--cpwib67fHQ&s"
  }
  ''';

      case "4":
        return '''
        {
          "type": 4,
          "message": "Mensaje alternativo en el caso 5."
        }
        ''';

      case "5":
        return '''
        {
          "type": 5,
          "items": [
            {
              "imageUrl": "https://example.com/image3.jpg",
              "title": "Producto C",
              "subtitle": "Descripción breve del producto C",
              "rating": "4.0"
            }
          ]
        }
        ''';

      case "6":
        return '''
        {
          "type": 6,
          "message": "Mensaje en el caso 7."
        }
        ''';

      default:
        return '''
        {
          "type": 3,
          "message": "Este es un mensaje simple de texto."
        }
        ''';
    }
  }
}
