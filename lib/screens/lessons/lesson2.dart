import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class Leccion2 extends StatelessWidget {
  const Leccion2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFF265DA6),
            actions: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 8,
                        ),
                        child: SvgPicture.asset(
                          width: 80,
                          height: 40,
                          'assets/logos/fundacion_coppel.svg', // Ruta del archivo SVG en assets
                        ),
                      ),
                      onTap: () {
                        //AL TAPEAR EL LOGO DE ARRIBA A LA IZQUIERDA
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                      'Es la resolución favorable emitida por la Secretaría de Economía que faculta a un solicitante para hacer uso de una denominación o razón social. No tiene costo, y se hace en línea.'),
                  const Text(
                    '\nRequisitos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('\n•\te-Firma'),
                  const Text(
                    '\nPara tramitar tu autorización para el uso del nombre de tu empresa, puedes seguir los siguientes pasos:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n1.\tIngresar a la liga: https://mua.economia.gob.mx/mua-web/muaHome\n2.\tCompletar los datos requeridos.\n3.\tAcepta términos y condiciones.\n4.\tSolicita tu denominación o razón social.\n5.\tFirma la autorización con tu e.firma.'),
                  const Text(
                      '\n\nEn un plazo de dos días hábiles se tendrá una respuesta, obteniendo una constancia de autorización para el uso del nombre de tu empresa'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 15,
                        backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
                        maximumSize: const Size(100, 50),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      onPressed: () async {
                        //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                        context.pop();
                      },
                      child: const Center(
                        child: Text(
                          "ATRAS",
                          style: TextStyle(
                              color: Color.fromRGBO(38, 93, 166, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
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
