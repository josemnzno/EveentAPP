import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Crear_cuenta.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, // Ajusta la altura del contenedor para que ocupe toda la pantalla
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/pantallas/fondo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 250),
                Text(
                  'ACCEDER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 75), // Agregamos un espacio entre el texto y los campos de entrada
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Correo electrónico',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Agregamos un espacio entre los campos de entrada
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true, // Para ocultar la contraseña
                  ),
                ),
                SizedBox(height: 50), // Agregamos un espacio entre los campos de entrada y los botones
                InkWell(
                  onTap: () {
                    // Acción a realizar cuando se presiona la imagen de "Acceder"
                  },
                  child: Image.asset(
                    'lib/pantallas/iniciar_sesion.png',
                    width: 200, // Ajusta el ancho de la imagen según tu necesidad
                  ),
                ),
                SizedBox(height: 50), // Agregamos un espacio entre los botones
                Text(
                  '¿No tienes una cuenta?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
            InkWell(
              onTap: () {
                // Redirige a la página de CrearCuenta al presionar "Crear cuenta"
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Crear_cuenta()),
                );
              },
              child: Image.asset(
                'lib/pantallas/Crear_cuenta.png',
                width: 200, // Ajusta el ancho de la imagen según tu necesidad
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Inicio(),
  ));
}
