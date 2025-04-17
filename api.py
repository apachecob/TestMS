from flask import Flask, jsonify, request
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
CORS(app)  # para permitir peticiones desde Postman u otro origen

# Conexión a la base de datos
conn = psycopg2.connect(
    host="localhost",
    database="postgres",
    user="postgres",
    password="postgres"
)


@app.route('/usuario/<int:id>', methods=['GET'])
def obtener_usuario(id):
    cursor = conn.cursor()
    query = "SELECT id_persona, nombre, fono, celular, correo FROM contactos WHERE id = %s"
    cursor.execute(query, (id,))
    resultado = cursor.fetchone()
    cursor.close()

    if resultado:
        usuario = {
            'id_persona': resultado[0],
            'nombre': resultado[1],
            'fono': resultado[2],
            'celular': resultado[3],
            'correo': resultado[4]
        }
        return jsonify(usuario)
    else:
        return jsonify({'error': 'Usuario no encontrado'}), 404


if __name__ == '__main__':
    app.run(debug=True)
