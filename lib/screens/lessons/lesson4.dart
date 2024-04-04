import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion4 extends StatelessWidget {
  const Leccion4({super.key});

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
                      'En este paso se permite a notarios, corredores públicos y, en su caso, a representantes legales, notificar el uso de la denominación o razón social autorizada, reservando al interesado el uso exclusivo de la denominación o razón social.\n\nEste trámite es de carácter gratuito y ofrece dos opciones para su obtención. Sin embargo, es imprescindible cumplir con los siguientes requisitos dependiendo de la modalidad seleccionada:'),
                  const Text(
                    '\nPresencial',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\nEl Fedatario Público que llevó a cabo la constitución de la Sociedad, mediante un escrito libre firmado autógrafamente con tinta de color distinta al negro, solicite formalmente procesar el aviso de uso de la denominación, explicando las razones de la solicitud. \n\nEl escrito de referencia deberá ser dirigido a la Dirección General de Normatividad Mercantil de la Secretaría de Economía, misma que deberá contener:\n\n\t\t\t\t\t\t\t\t- La denominación.\n\t\t\t\t\t\t\t\t-	Número de expediente o CUD.\n\t\t\t\t\t\t\t\t-	Número y fecha de instrumento público con el que fue constituida la sociedad.\n\t\t\t\t\t\t\t\t-	Régimen jurídico.\n\t\t\t\t\t\t\t\t-	Folio Mercantil.\n\t\t\t\t\t\t\t\t-	Correo electrónico (autorizado para oír y recibir notificaciones).\n\t\t\t\t\t\t\t\t-	Número telefónico de contacto\n\nPuede acudir a las oficinas de la Dirección General de Normatividad Mercantil ubicadas en Avenida Insurgentes Sur, 1940, piso 1, Colonia Florida, Demarcación Territorial Álvaro Obregón, Ciudad de México en un horario de 9:00 a 14:00 horas de lunes a viernes.'),
                  const Text(
                    '\nEn línea',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t- e.firma\n\nAccede al módulo de denominaciones y razones sociales. Ingresa a la opción “aviso de uso”. Completa los datos requeridos. Firma el aviso de uso con tu e.firma. Imprime tu constancia de uso en PDF https://mua.economia.gob.mx/mua-web/muaHome'),
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
