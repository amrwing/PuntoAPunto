import 'package:flutter/material.dart';

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
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            'Regimen: ${empresaSeleccionada['regimen']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Sector: ${empresaSeleccionada['sector']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Teléfono de contacto: ${empresaSeleccionada['telefonoContacto']}',
                            style: const TextStyle(fontSize: 16),
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
                  Container(
                    height: 400,
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: empresaSeleccionada['productos'].length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Card(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(
                                    '${empresaSeleccionada['productos'][index].nombre}',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "Precio al mayoreo: \$${empresaSeleccionada['productos'][index].precioMayoreo} pesos/unidad"),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 8),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "Precio unitario: \$${empresaSeleccionada['productos'][index].precioUnidad} pesos/unidad"),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 15,
                                    backgroundColor:
                                        const Color.fromRGBO(254, 217, 37, 1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
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
                                    context.push("/product_screen");
                                  },
                                  child: const Center(
                                    child: Text(
                                      "Ver",
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
