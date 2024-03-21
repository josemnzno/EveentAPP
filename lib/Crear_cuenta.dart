import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Crear_cuenta extends StatelessWidget {
  const Crear_cuenta({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, // Ajusta la altura del contenedor para que ocupe toda la pantalla
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/pantallas/fondo2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  'NUEVO USUARIO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
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
    home: Crear_cuenta(),
  ));
}
