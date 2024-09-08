# Cosas que falta

## Modulo auth

1. Login / signup google y apple
2. Eliminar cuenta

## Modulo Profile

1. Subir imagen de perfil. Solo necesito la request para subir exclusivamente la imagen. Con formato un ejemplo curl probado.

## Modulo favoritos

1. Obtener todos los favoritos de un usuario, ordenados por fecha y con paginacion.
Los parámetros serían user_id, page, limit.
La respuesta debe tener los sisguientes valores:
- current_page requerido
- total_pages requerido
- data -> lista de favoritos
    - id_favorite requerido 
    - id_user requerido 
    - id_business requerido
    - name_business requerido
    - type_business requerido
    - image_business opcional
    - id_product opcional
    - name_product opcional
    - type_product opcional
    - image_product opcional
    - id_service  opcional
    - name_service opcional
    - type_service opcional
    - image_service opcional
    - created_at requerido
    - updated_at requerido
Si el favorito es un business, solo aparecen los campos de business. SI es un producto, aparecen los campos business y producto. Si es un servicio, aparecen los campos business y servicio.

2. Add favorite. A partir de un user_id y un id_business, id_product o id_service, se añade a favoritos. Si ya existe, se actualiza la fecha de creación. La consulta debe devolver el modelo de favorito creado o actualizado.

3. Delete favorite. A partir de un user_id y un id_favorite, se elimina de favoritos. La consulta debe devolver el modelo de favorito eliminado.

## Modulo history
Hay dos historiales, el historial de las visitas a perfiles business, product, services y el historial del chat

### Historial de visitas

1. Obtener todas las visitas de un usuario, ordenadas por fecha y con paginacion.
Los parámetros serían user_id, page, limit.
La respuesta debe tener los sisguientes valores:
- current_page requerido
- total_pages requerido
- data -> lista de visitas
    - id_visit requerido 
    - id_user requerido 
    - id_business requerido
    - name_business requerido
    - type_business requerido
    - image_business opcional
    - id_product opcional
    - name_product opcional
    - type_product opcional
    - image_product opcional
    - id_service  opcional
    - name_service opcional
    - type_service opcional
    - image_service opcional
    - created_at requerido
    - updated_at requerido

2. Delete visit. A partir de un user_id y un id_visit, se elimina de visitas. La consulta debe devolver el modelo de visita eliminado.

3. Delete all visits. A partir de un user_id, se eliminan todas las visitas. La consulta debe devolver el modelo de visitas eliminadas.

El servidor, debe mantener el registro del historial. Cada vez que se reciba una request de un business, product, service, por parte del usuario, se debe registrar en el historial de visitas. Por favor, no repitais entradas en la tabla. Si el item existe, actualizad la fecha de visita.

### Historial de chat

1. Obtener todas las conversaciones de un usuario, ordenadas por fecha y con paginacion.

Los parámetros serían user_id, page, limit.
La respuesta debe tener los sisguientes valores:
- current_page requerido
- total_pages requerido
- data -> lista de conversaciones
    - id_conversation requerido 
    - id_user requerido 
    - query requerido -> la query que realizo. Solo texto
    - created_at requerido
    - updated_at requerido

2. Delete conversation. A partir de un user_id y un id_conversation, se elimina de conversaciones. La consulta debe devolver el modelo de conversacion eliminado.

3. Delete all conversations. A partir de un user_id, se eliminan todas las conversaciones. La consulta debe devolver el modelo de conversaciones eliminadas.


## Modulo reviews

### Get user reviews

Params: user_id, page, limit

Response:
- current_page
- total_pages
- data -> list of reviews
    - id_review required 
    - review_rate required
    - review_text required
    - id_user required 
    - user_name required 
    - user_image optional
    - id_business required 
    - name_business required 
    - type_business required 
    - image_business optional
    - business_rate required
    - business_num_reviews required
    - id_product optional
    - name_product optional
    - type_product optional
    - image_product optional
    - product_rate optional
    - product_num_reviews optional
    - id_service optional
    - name_service optional
    - type_service optional
    - image_service optional
    - service_rate optional
    - service_num_reviews optional
    - created_at required
    - updated_at required

Si la review es de un business, solo aparecen los campos de business. SI es un producto, aparecen los campos business y producto. Si es un servicio, aparecen los campos business y servicio. Se debe proporcionar el rate y el numero de reviews del business, producto o servicio.

La lista tiene que venir ordenada por fecha de creación.

### Add review

Params: user_id, review_rate, review_text, id_business, id_product, id_service

Response: review model como el de get user reviews


### Update review

Params: user_id, id_review, review_rate, review_text

Response: review model como el de get user reviews

### Delete review

Params: user_id, id_review

Response: review model como el de get user reviews

### Get business reviews

Params: id_business, page, limit, sortBy, filterByRate

sortBy: 'rate' | 'date'

filterByRate: 1 | 2 | 3 | 4 | 5 se devuleven las reviews con rate igual o menor a filterByRate por rangos

si es 1 se devuelven las menores o iguales a 1
si es 2 se devuelven las mayores que 1 y menores o iguales a 2
si es 3 se devuelven las mayores que 2 y menores o iguales a 3
si es 4 se devuelven las mayores que 3 y menores o iguales a 4
si es 5 se devuelven las mayores que 4 y menores o iguales a 5


Response:

- current_page
- total_pages

- data -> list of reviews
    - id_review required 
    - review_rate required
    - review_text required
    - id_user required 
    - user_name required 
    - user_image optional
    - id_business required 
    - name_business required 
    - type_business required 
    - image_business optional
    - business_rate required
    - business_num_reviews required
    - created_at required
    - updated_at required


### Get product reviews

Params: id_product, page, limit, sortBy, filterByRate

sortBy: 'rate' | 'date'

filterByRate: 1 | 2 | 3 | 4 | 5 se devuleven las reviews con rate igual o menor a filterByRate por rangos

si es 1 se devuelven las menores o iguales a 1
si es 2 se devuelven las mayores que 1 y menores o iguales a 2
si es 3 se devuelven las mayores que 2 y menores o iguales a 3
si es 4 se devuelven las mayores que 3 y menores o iguales a 4
si es 5 se devuelven las mayores que 4 y menores o iguales a 5

Response:

- current_page
- total_pages

- data -> list of reviews
    - id_review required 
    - review_rate required
    - review_text required
    - id_user required 
    - user_name required 
    - user_image optional
    - id_business required 
    - name_business required 
    - type_business required 
    - image_business optional
    - business_rate required
    - business_num_reviews required
    - id_product optional
    - name_product optional
    - type_product optional
    - image_product optional
    - product_rate optional
    - product_num_reviews optional
    - created_at required
    - updated_at required

### Get service reviews

Params: id_service, page, limit, sortBy, filterByRate

sortBy: 'rate' | 'date'

filterByRate: 1 | 2 | 3 | 4 | 5 se devuleven las reviews con rate igual o menor a filterByRate por rangos

si es 1 se devuelven las menores o iguales a 1
si es 2 se devuelven las mayores que 1 y menores o iguales a 2
si es 3 se devuelven las mayores que 2 y menores o iguales a 3
si es 4 se devuelven las mayores que 3 y menores o iguales a 4
si es 5 se devuelven las mayores que 4 y menores o iguales a 5

Response:

- current_page
- total_pages

- data -> list of reviews
    - id_review required 
    - review_rate required
    - review_text required
    - id_user required 
    - user_name required 
    - user_image optional
    - id_business required 
    - name_business required 
    - type_business required 
    - image_business optional
    - business_rate required
    - business_num_reviews required
    - id_service optional
    - name_service optional
    - type_service optional
    - image_service optional
    - service_rate optional
    - service_num_reviews optional
    - created_at required
    - updated_at required

#   F i n D a l l S e r g i  
 