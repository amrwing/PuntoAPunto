import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion5 extends StatelessWidget {
  const Leccion5({super.key});

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
                      'Esta es una operación a cargo de la Secretaría de Economía, cuyo objetivo es dar publicidad a los actos mercantiles y de esta manera brindar certeza jurídica a los comerciantes.\n\nDe igual forma que otros trámites este cuenta con la opción de realizarlo de forma presencial en     ventanilla o en línea haciendo uso de la página web:'),
                  const Text(
                    '\nPresencial',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\nMediante esta modalidad se presenta el trámite en la ventanilla de recepción de la oficina del Registro Público que corresponda al domicilio social de la sociedad.\n\nRequisitos para presentar trámites en ventanilla:\n\n\t\t\t\t\t\t\t\t1.	Forma precodificada (que corresponda al acto que se solicita registrar).\n\t\t\t\t\t\t\t\t2.	Póliza, testimonio o acta correspondiente, donde consta el acto a inscribir.\n\t\t\t\t\t\t\t\t3.	Medio magnético que contenga tales documentos firmados electrónicamente por el fedatario público.\n\t\t\t\t\t\t\t\t4.	Pago de derechos.\n\nEl archivo magnético debe estar firmado con la e.firma que emite el Servicio de Administración Tributaria (SAT). Para firmar electrónicamente los documentos presentados en ventanilla, el fedatario público deberá descargar:\n\n\t\t\t\t\t\t\t\t•	El archivo denominado “Firma_Docto_FIEL”, este archivo le permitirá firmar con la e.firma.\n\t\t\t\t\t\t\t\t•	La “Guía rápida para la firma de documentos con e.firma para fedatarios públicos.”, misma que contiene el procedimiento a seguir para realizar la firma electrónica de documentos.\n\nAmbos documentos se encuentran disponibles en la sección "Manuales" de la siguiente página web https://rpc.economia.gob.mx/siger2/xhtml/tramites.xhtml'),
                  const Text(
                    '\nEn línea',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\nEnviar por medios electrónicos a través del Sistema Integral de Gestión Registral (SIGER), la forma pre-codificada acompañada del archivo en el que conste el acto a inscribir, así como el pago de derechos.\n\nLa forma pre-codificada se puede obtener en la siguiente liga: https://rpc.economia.gob.mx/siger2/xhtml/formaspre.xhtml\n\nPara ambos tramites es altamente recomendado revisar la guia de la página oficial y acceder al documento de preguntas frecuentes que nos ayudará a completar el trámite con más eficacia https://rpc.economia.gob.mx/siger2/resources/docs/Preguntas_Frecuentes_RPC.pdf'),
                  const Text(
                    '\nRequisitos para solicitar acceso al sistema:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t- Contar con garantía vigente de conformidad con lo dispuesto por los artículos 30 bis y 30 bis 1 del Código de Comercio, 13 del Reglamento del Registro Público de Comercio y el numeral 7 de los Lineamientos para la Operación del Registro Público de Comercio.\n\t\t\t\t\t\t\t\t- Solicitar cuenta de acceso al Sistema Integral de Gestión Registral (SIGER 2.0), enviando correo a la cuenta soporte.rpc@economia.gob.mx\n\t\t\t\t\t\t\t\t- Para más detalles, es necesario consultar la "Guía de ingreso al Sistema integral de Gestión Registral (SIGER) para Fedatarios Públicos", disponible en el apartado Guías de la sección "Manuales" https://rpc.economia.gob.mx/siger2/xhtml/tramites.xhtml'),
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
