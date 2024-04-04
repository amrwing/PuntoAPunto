import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion3 extends StatelessWidget {
  const Leccion3({super.key});

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
                      'Este documento es como “el acta de nacimiento” de tu empresa. Incluye aspectos legales como nombre y objeto de la sociedad, domicilio, capital social, cláusulas especiales y datos generales de los socios (ya sean personas físicas o morales).'),
                  const Text(
                    '\nExisten varios tipos de sociedades:',
                  ),
                  const Text(
                      '\nConstitución de Asociación Civil:\n\t\t\t\t\t\t\t\t• Contrato que otorgan dos o más personas para realizar un fin común que no forzosamente esta orientado a actividades financieras o de negocio.\n\nConstitución de Sociedad Civil:\n\t\t\t\t\t\t\t\t• Contrato que otorgan dos o más personas para realizar un fin común de carácter económico sin intenciones de generar ganancias a partir de la compra-venta o algo relacionado.\n\nConstitución de Sociedad Mercantil:\n\t\t\t\t\t\t\t\t• Contrato que otorgan dos o más personas para realizar un fin común que constituye una ganancia en el mercado, refiriéndose a actividades mercantiles.'),
                  const Text(
                    '\nRequisitos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t• Llenar formato de datos para constituir una sociedad\n\t\t\t\t\t\t\t\t• Identificación oficial de las partes (credencial de elector, pasaporte, cédula profesional).\n\t\t\t\t\t\t\t\t• Cédula del registro federal de contribuyentes (RFC, copia de situación fiscal) de las partes.\n\t\t\t\t\t\t\t\t• Clave única de registro de población (CURP) de las partes.\n\t\t\t\t\t\t\t\t• Constancia de autorización de denominación o razón social.'),
                  const Text(
                      '\nParte fundamental de este punto recae en el notario. El notario dará fe pública de la constitución de la sociedad a través de la redacción de la escritura constitutiva la que comprende los estatutos sociales, en los que se definen el tipo de sociedad que se formará, así como los derechos y obligaciones que los socios adquieren.'),
                  const Text(
                    '\nEl proceso es el siguiente:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\nPrevio a la firma de la escritura constitutiva:\n\t\t\t\t\t\t\t\t- Mostrar la constancia de autorización de denominación o razón social\n\nSimultáneos a la firma de la escritura constitutiva:\n\t\t\t\t\t\t\t\t- Transcripción de la autorización para uso de la denominación o razón\n\t\t\t\t\t\t\t\t- Consignación de la cláusula sobre la posible admisión o no de extranjeros, incluir los requisitos contemplados en la Ley\n\t\t\t\t\t\t\t\t- Verificar las claves del Registro Federal de Contribuyentes de los socios o accionistas\n\t\t\t\t\t\t\t\t- Consignar los datos de identificación de los otorgantes.\n\t\t\t\t\t\t\t\t- Firma por todos los socios o accionistas ante la presencia del notario.'),
                  const Text(
                      '\n\nAl terminar el proceso, se obtiene nuestra Acta constitutiva.'),
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
