import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                ElevatedButton(
                  onPressed: () {
                    // Acción a realizar cuando se presiona el botón de Acceder
                  },
                  child: Text('Acceder'),
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
