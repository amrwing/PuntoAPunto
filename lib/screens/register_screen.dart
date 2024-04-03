import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/widgets/custom_appbar_1.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _empresa = '';
  // ignore: unused_field
  String _rfc = '';
  // ignore: unused_field
  String _regimenFiscal = '';
  // ignore: unused_field
  String _sectorComercial = '';
  // ignore: unused_field
  String _telefono = '';
  // Variable para almacenar la imagen seleccionada
  // Puedes usar File para manejar la imagen como un archivo local
  // Aquí asumimos que estamos guardando solo la URL de la imagen
  // ignore: unused_field
  final String _imagenURL = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre de la Empresa'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce el nombre de la empresa';
                  }
                  return null;
                },
                onSaved: (value) {
                  _empresa = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'RFC'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce el RFC';
                  }
                  return null;
                },
                onSaved: (value) {
                  _rfc = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Régimen Fiscal'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce el régimen fiscal';
                  }
                  return null;
                },
                onSaved: (value) {
                  _regimenFiscal = value!;
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Sector Comercial'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce el sector comercial';
                  }
                  return null;
                },
                onSaved: (value) {
                  _sectorComercial = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Teléfono'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce el teléfono';
                  }
                  return null;
                },
                onSaved: (value) {
                  _telefono = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              // Aquí puedes mostrar la imagen seleccionada si es necesario
              // Por ejemplo: Image.network(_imagenURL),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 15,
                  backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
                  maximumSize: const Size(150, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () async {
                  //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                  context.push("/home_screen");
                },
                child: const Center(
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                        color: Color.fromRGBO(38, 93, 166, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
