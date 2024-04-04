import 'package:flutter/Material.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/models/contrato.dart';
import 'package:punto_a_punto/widgets/custom_appbar_1.dart';

class StablishContractScreen extends StatefulWidget {
  const StablishContractScreen({super.key});

  @override
  _StablishContractScreenState createState() => _StablishContractScreenState();
}

class _StablishContractScreenState extends State<StablishContractScreen> {
  final _formKey = GlobalKey<FormState>();
  late Contrato _contrato;

  @override
  void initState() {
    super.initState();
    _contrato = Contrato(
      derechosYObligaciones: '',
      nombreProveedor: '',
      objetoDeContrato: '',
      tipoDeContrato: '',
      fechaInicio: DateTime.now(),
      fechaTerminacion: DateTime.now(),
      frecuenciaDeProvision: '',
      garantias: '',
      nombreComprador: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width < 720)
                  ? MediaQuery.of(context).size.width * 0.8
                  : MediaQuery.of(context).size.width * 0.3,
              child: ListView(
                children: <Widget>[
                  const Text(
                    "Datos del contrato",
                    style: TextStyle(fontFamily: 'Milker'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Nombre del Proveedor'),
                    initialValue: empresaSeleccionada['nombre'],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce el nombre del proveedor';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.nombreProveedor = value!;
                    },
                  ),
                  TextFormField(
                    initialValue: (usuarioGlobal.nombreUsuario.isEmpty)
                        ? ""
                        : usuarioGlobal.nombreUsuario,
                    decoration: const InputDecoration(
                        labelText: 'Nombre del Comprador'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce el nombre del comprador';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.nombreComprador = value!;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Objeto de Contrato'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce el objeto del contrato';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.objetoDeContrato = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Derechos y Obligaciones'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce los derechos y obligaciones';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.derechosYObligaciones = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Garantías'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce las garantías';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.garantias = value!;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Tipo de Contrato'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce el tipo de contrato';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.tipoDeContrato = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Frecuencia de Provisión'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce la frecuencia de provisión';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _contrato.frecuenciaDeProvision = value!;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Fecha de Inicio'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce la fecha de inicio';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // Aquí puedes convertir la cadena de texto en un objeto DateTime
                      // Esto es solo un ejemplo básico, puedes necesitar un formato específico
                      _contrato.fechaInicio = DateTime.parse(value!);
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Fecha de Terminación'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, introduce la fecha de terminación';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // Aquí puedes convertir la cadena de texto en un objeto DateTime
                      // Esto es solo un ejemplo básico, puedes necesitar un formato específico
                      _contrato.fechaTerminacion = DateTime.parse(value!);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 15,
                        backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          contratosGlobal.add(_contrato);
                          // Una vez que hayas enviado el contrato, puedes mostrar un mensaje de éxito
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Contrato registrado correctamente'),
                            ),
                          );
                        }
                      },
                      child: const Center(
                        child: Text(
                          "Registrar Contrato",
                          style: TextStyle(
                              color: Color.fromRGBO(38, 93, 166, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
