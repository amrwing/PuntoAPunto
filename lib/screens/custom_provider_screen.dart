import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class CustomProviderScreen extends StatelessWidget {
  const CustomProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar1(),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //IMAGEN
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              empresaSeleccionada["nombre"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'Milker', fontSize: 22),
                            ),
                            Image.asset('${empresaSeleccionada["imagen"]}')
                          ],
                        ),
                      ),
                    ),
                  ),

                  //INFORMACIÓN
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '"${empresaSeleccionada["slogan"]}"',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Milker', fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Regimen: ${empresaSeleccionada['regimen']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Sector: ${empresaSeleccionada['sector']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Teléfono de contacto: ${empresaSeleccionada['telefonoContacto']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'Materias',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 500,
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    child: ListView.builder(
                      itemCount: empresaSeleccionada['productos'].length,
                      itemBuilder: (context, index) => Card(
                        child: Column(
                          children: [
                            ListTile(
                              trailing: TextButton(
                                child: const Text("Solicitar producto"),
                                onPressed: () {
                                  //ENTRAR A LA SOLICITUD DEL MATERIAL
                                  productoSeleccionado['nombre'] =
                                      empresaSeleccionada['productos'][index]
                                          .nombre;
                                  productoSeleccionado['descripcion'] =
                                      empresaSeleccionada['productos'][index]
                                          .descripcion;
                                  productoSeleccionado['precioMayoreo'] =
                                      empresaSeleccionada['productos'][index]
                                          .precioMayoreo;
                                  productoSeleccionado['precioUnidad'] =
                                      empresaSeleccionada['productos'][index]
                                          .precioUnidad;
                                  productoSeleccionado['plazosDeEntrega'] =
                                      empresaSeleccionada['productos'][index]
                                          .plazosDeEntrega;
                                  productoSeleccionado['metodoEntrega'] =
                                      empresaSeleccionada['productos'][index]
                                          .metodoEntrega;
                                  context.push("/stablish_contract_screen");
                                },
                              ),
                              leading: Text(
                                  '${empresaSeleccionada['productos'][index].nombre}'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
