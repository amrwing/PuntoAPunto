import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class Leccion1 extends StatelessWidget {
  const Leccion1({super.key});

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
                      'La e.firma, antes llamada Firma Electrónica Avanzada (FIEL), es básicamente un conjunto de información que se agrega a un correo electrónico o documento electrónico. Su propósito es confirmar que el remitente del mensaje es quien dice ser, similar a una firma escrita a mano en un documento físico.'),
                  const Text(
                      '\nLa e.firma te sirve para realizar trámites y servicios en línea con diversas instituciones gubernamentales en México, como el Servicio de Administración Tributaria (SAT). Con ella, puedes firmar de manera electrónica documentos y expedir comprobantes fiscales.'),
                  const Text(
                    '\nRequisitos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n•\tMemoria USB vacia\n•\tDirección de correo electrónico vigente\n•\tSolicitud de preregistro para el certificado de e.firma\n•\tCURP\n•\tComprobante de domicilio \n•\tActa de naciemiento \n•\tIdentificación oficial'),
                  const Text(
                    '\nPara tramitar tu e.firma en México, puedes seguir los siguientes pasos:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n1.\tPreregistro en línea: Realiza tu pre-alta en línea a través de la página del SAT. Necesitarás tu Clave Única de Registro de Población (CURP) y tu RFC.\n2.\tAgendar cita en linea: Posterior a el preregistro para la obtención de la e.firma, es necesario agendar una cita en algún modulo, eso se realiza en el siguiente link. https://citas.sat.gob.mx/\n3.\tFinalizar el trámite Una vez que hayas presentado todos los documentos necesarios, el SAT procesará tu solicitud y te proporcionará un Certificado Digital de e.firma en tu memoria USB.'),
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
