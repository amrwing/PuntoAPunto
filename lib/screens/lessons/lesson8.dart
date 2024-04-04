import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion8 extends StatelessWidget {
  const Leccion8({super.key});

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
                      'Dependiendo del giro que tenga la empresa, se puede requerir la inscripción a distintos organismos siendo los más comunes:\n\n\t\t\t\t\t\t\t\t•	Secretaría de Salud \n\n\t\t\t\t\t\t\t\t•	Secretaría de Ecología y Medio Ambiente\n\n\t\t\t\t\t\t\t\t•	Instituto Mexicano de la Propiedad Intelectual. \n\nEn este punto también entran los permisos municipales o estatales que sean requeridos en la zona geográfica en que busca establecerse. Por ejemplo, para un restaurante, podrías necesitar obtener permisos de la Secretaría de Salud para garantizar que tu establecimiento cumple con las normas de higiene y seguridad alimentaria. También podrías necesitar permisos de la Secretaría de Ecología y Medio Ambiente si tu restaurante va a producir ciertos tipos de residuos. Además, si planeas reproducir música en tu restaurante, podrías necesitar obtener una licencia del Instituto Mexicano de la Propiedad Intelectual.\n\nEs importante mencionar que estos son solo ejemplos y los requisitos específicos pueden variar dependiendo de la ubicación y el tipo de negocio. Te recomendaría que consultes con un abogado o asesor de negocios para obtener información más precisa y personalizada a tus necesidades. Recuerda que esta información es general y puede no aplicarse a tu situación específica.'),
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
