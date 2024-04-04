import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

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
                              productoSeleccionado["nombre"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'Milker', fontSize: 22),
                            ),
                            Image.asset(
                                '${productoSeleccionado["imagen"] ?? "assets/images/default.png"}')
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
                            '${productoSeleccionado["descripcion"]}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Milker', fontSize: 12),
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
                          const Text(
                            'Precio al por mayor',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "\$${productoSeleccionado['precioMayoreo']} pesos/unidad",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          const SizedBox(height: 8),
                          const Text(
                            'Precio por unidad (pieza)',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "\$${productoSeleccionado['precioUnidad']} pesos/unidad",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Frecuencia de entrega:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width < 720)
                                ? MediaQuery.of(context).size.width * 0.8
                                : MediaQuery.of(context).size.width * 0.3,
                            height: 50,
                            child: ListView.builder(
                              itemCount: productoSeleccionado['plazosDeEntrega']
                                  .length,
                              itemBuilder: (context, index) => Text(
                                productoSeleccionado['plazosDeEntrega'][index],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const Text(
                            "Método de entrega",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "${productoSeleccionado['metodoEntrega']}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 15,
                              backgroundColor:
                                  const Color.fromRGBO(254, 217, 37, 1),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onPressed: () {
                              //ENTRAR A LA SOLICITUD DEL MATERIAL
                              context.push("/stablish_contract_screen");
                            },
                            child: const Center(
                              child: Text(
                                "Iniciar solicitud de contrato",
                                style: TextStyle(
                                    color: Color.fromRGBO(38, 93, 166, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 15),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Quizá podría serte útil...")),
                          ),
                        ],
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
