import 'package:flutter/material.dart';

class Tipo extends StatelessWidget {
  const Tipo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                  'EveentApp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            hintText: '',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            // Centrar el texto dentro del cuadro de texto
                            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            // Alineación del texto dentro del cuadro de texto
                            hintStyle: TextStyle(
                              fontSize: 20,
                            ),
                            alignLabelWithHint: true,
                            // Alineación del texto dentro del cuadro de texto
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Buscar',
                            labelStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Espacio entre el campo de texto y la imagen
                      GestureDetector(
                        onTap: () {
                          // Acción al hacer clic en la imagen
                        },
                        child: Image.asset( 'lib/pantallas/lupa.png', // Ruta de la imagen a utilizar
                          width: 50, // Ancho de la imagen
                          height: 50, // Alto de la imagen)

                        ),
                      ),
                    ],
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
