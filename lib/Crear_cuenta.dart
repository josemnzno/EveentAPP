import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Inicio.dart';

class Crear_cuenta extends StatefulWidget {
  const Crear_cuenta({Key? key});

  @override
  _Crear_cuentaState createState() => _Crear_cuentaState();
}

class _Crear_cuentaState extends State<Crear_cuenta> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  String? _passwordErrorText;
  String? _phoneErrorText;
  String? _emailErrorText;
  String? _lastNameErrorText;
  String? _confirmEmailErrorText;

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
                SizedBox(height: 125),
                Text(
                  'NUEVO USUARIO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60,),
                  child: TextFormField(
                    controller: _firstNameController,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      hintText: 'Nombre/s',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    controller: _lastNameController,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      hintText: 'Apellidos',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: _lastNameErrorText,
                    ),
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    controller: _phoneController,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      hintText: 'Telefono',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: _phoneErrorText,
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      setState(() {
                        if (value.length != 10) {
                          _phoneErrorText = 'El teléfono debe tener 10 números';
                        } else {
                          _phoneErrorText = null;
                        }
                      });
                    },
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    controller: _emailController,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: _emailErrorText,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {
                        if (!isEmail(value)) {
                          _emailErrorText = 'Ingrese un correo electrónico válido';
                        } else {
                          _emailErrorText = null;
                        }
                      });
                    },
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirmar E-mail',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: _confirmEmailErrorText,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {
                        if (_emailController.text != value) {
                          _confirmEmailErrorText = 'Los correos electrónicos no coinciden';
                        } else {
                          _confirmEmailErrorText = null;
                        }
                      });
                    },
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 80),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Crear Contraseña',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: _passwordErrorText,
                    ),
                    obscureText: true,
                  ),
                ),
                // Otros campos de texto...
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 80),
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirmar Contraseña',
                      filled: true,
                      fillColor: Colors.greenAccent[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {
                        if (_passwordController.text != value) {
                          _passwordErrorText = 'Las contraseñas no coinciden';
                        } else {
                          _passwordErrorText = null;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Verificar si algún campo está vacío
                    if (_firstNameController.text.isEmpty ||
                        _lastNameController.text.isEmpty ||
                        _phoneController.text.isEmpty ||
                        _emailController.text.isEmpty ||
                        _emailController.text.isEmpty||
                        _passwordController.text.isEmpty ||
                        _confirmPasswordController.text.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Error'),
                            content: Text('Por favor, complete todos los campos.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Aceptar'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // Todos los campos están completos, puedes proceder con la creación de la cuenta
                      // Aquí puedes agregar tu lógica para crear la cuenta en Firebase o donde desees.
                      print('Crear cuenta');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green[400], // Color del texto del botón
                    textStyle: TextStyle(fontSize: 20), // Tamaño del texto del botón
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), // Padding del botón
                  ),
                  child: Text('Crear cuenta'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
}

bool isEmail(String value) {
  // Expresión regular para validar el formato de correo electrónico
  final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(value);
}

void main() {
  runApp(MaterialApp(
    home: Crear_cuenta(),
  ));
}
