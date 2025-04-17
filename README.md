# API REST para Prueba en MINSAL

Este documento describe cómo configurar y ejecutar una API REST que consulta un producto asociado a un código específico.

## Endpoint

- **GET api/productos/{codigo}**: Este endpoint permite consultar un producto asociado a un código proporcionado en la URL.

## Pasos para la Instalación

1. **Levantar una base de datos MySQL**:
   - Asegúrate de tener MySQL instalado y en funcionamiento en tu máquina o servidor.

2. **Usar el script `sql_script.sql`**:
   - Este script contiene datos de prueba necesarios para la API. Carga este script en tu base de datos MySQL para crear las tablas y los datos iniciales.

3. **Tomar la dirección IP de la base de datos MySQL**:
   - Obtén la dirección IP de tu servidor MySQL. Esto es necesario para que la API pueda conectarse a la base de datos.

4. **Guardar la IP en el código `main.py`**:
   - Abre el archivo `main.py` y guarda la dirección IP de la base de datos en el código. **Nota**: Esto no es recomendado para entornos de producción, ya que puede comprometer la seguridad.

5. **Instalar las dependencias**:
   - Asegúrate de tener `Flask` y `mysql-connector` instalados. Puedes hacerlo ejecutando el siguiente comando:
     ```bash
     pip install Flask mysql-connector
     ```
   - Se sugiere usar `UV` o  `Poetry` para ejecutar la aplicación.

6. **Ejecutar `main.py`**:
   - Una vez que hayas configurado todo, ejecuta el archivo `main.py` con el siguiente comando:
     ```bash
     python main.py
     ```


## Ejemplo de Uso

http://0.tcp.sa.ngrok.io:19677/api/productos/

Para consultar un producto, realiza una solicitud GET al siguiente endpoint:
