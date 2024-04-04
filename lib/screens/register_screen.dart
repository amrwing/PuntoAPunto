import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/models/usuario.dart';
import 'package:punto_a_punto/widgets/custom_appbar_1.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  String empresa = '';
  String edad = '';
  String usuario = '';
  String rfcUsuario = '';
  String rfcEmpresa = '';
  String regimenFiscal = '';
  String sectorComercial = '';
  String telefonoEmpresa = '';
  String telefonoUsuario = '';
  // Aquí asumimos que estamos guardando solo la URL de la imagen
  final String imagenURL = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: (MediaQuery.of(context).size.width < 720)
                ? MediaQuery.of(context).size.width * 0.8
                : MediaQuery.of(context).size.width * 0.3,
            child: Form(
              key: formKey,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    initialValue: "Juan Antonio Moreno Muñoz",
                    decoration: const InputDecoration(labelText: 'Tu nombre'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce tu nombre';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      usuario = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: "Ferretería Toño",
                    decoration: const InputDecoration(
                        labelText: 'Nombre de tu Empresa'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce el nombre de la empresa';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      empresa = value!;
                    },
                  ),

                  TextFormField(
                    initialValue: "FERJ21312DDSA",
                    decoration:
                        const InputDecoration(labelText: 'RFC de la empresa'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce el RFC de la empresa';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      rfcEmpresa = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: "MOMJ212121EW0",
                    decoration:
                        const InputDecoration(labelText: 'RFC personal'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce tu RFC';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      rfcUsuario = value!;
                    },
                  ),
                  const Text(
                    'Selecciona el Régimen Fiscal:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      value: regimenFiscal,
                      onChanged: (newValue) {
                        setState(() {
                          regimenFiscal = newValue ?? "";
                        });
                      },
                      items: <String>[
                        '',
                        'Régimen General',
                        'Régimen Simplificado de Confianza ',
                        'Régimen de Actividades Empresariales',
                        'Régimen de Arrendamiento',
                        'Régimen de Actividades Empresariales y Profesionales',
                        // Agrega más opciones según sea necesario
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, selecciona un régimen fiscal';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        // Guarda el valor seleccionado en la variable _regimenFiscal
                        regimenFiscal = value!;
                      },
                    ),
                  ),
                  TextFormField(
                    initialValue: "Ferretero",
                    decoration: const InputDecoration(
                        labelText: 'Sector Comercial de la empresa'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce el sector comercial de la empresa';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      sectorComercial = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: "21",
                    decoration: const InputDecoration(labelText: 'Edad'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce tu edad';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      edad = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: "555-555-5555",
                    decoration: const InputDecoration(
                        labelText: 'Teléfono de la Empresa'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce el teléfono de la Empresa';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      telefonoEmpresa = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: "222-222-2222",
                    decoration:
                        const InputDecoration(labelText: 'Telefono personal'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, introduce tu telefono';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      telefonoUsuario = value!;
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        usuarioGlobal = Usuario(
                            edad: edad,
                            nombreEmpresa: empresa,
                            nombreUsuario: usuario,
                            rfcEmpresa: rfcEmpresa,
                            rfcUusario: rfcUsuario,
                            telefonoEmpresa: telefonoEmpresa,
                            telefonoUsuario: telefonoUsuario);
                        //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                        context.push("/home_screen");
                      }
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
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
