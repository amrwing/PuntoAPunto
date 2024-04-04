import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion7 extends StatelessWidget {
  const Leccion7({super.key});

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
                      'Aunque seas el único trabajador en tu microempresa, puedes registrarte en el Instituto Mexicano del Seguro Social (IMSS) como trabajador independiente. Esto te permitirá tener acceso a los beneficios del IMSS y ser derechohabiente del Instituto del Fondo Nacional de la Vivienda para los Trabajadores (Infonavit).\n\nAl inscribirte voluntariamente al régimen obligatorio del IMSS, podrás realizar aportaciones al Infonavit y con esto se te permitirá obtener un crédito o abono a tu subcuenta para el retiro. Además, tendrás derecho a que el IMSS te atienda por enfermedad o maternidad, afiliar a tus beneficiarios; atención médica y hospitalaria por riesgo de trabajo, seguro de invalidez y vida; ahorro en la pensión para el retiro, cesantía y vejez.\n\nPara registrarte, puedes hacerlo en línea a través de la página del IMSS o directamente en la subdelegación que corresponda a tu domicilio.\n\nEs importante mencionar que los pagos a la seguridad social deberán hacerse de manera mensual, bimestral, semestral o en anualidades adelantadas, a elección de cada asegurado.\n\nPara dar de alta tu empresa en el IMSS debes de seguir los siguientes pasos:'),
                  const Text(
                      '\nPreregistro en línea: Puedes realizar tu pre-alta en línea a través de la página del IMSS. Necesitarás tu Clave Única de Registro de Población (CURP) y tu Firma Electrónica Avanzada (FIEL).\n\nPresentación de documentos en la Subdelegación del IMSS: Deberás presentar la siguiente documentación en la Subdelegación u Oficina Auxiliar de Afiliación y Cobranza que te corresponda de acuerdo al domicilio fiscal:\n\t\t\t\t\t\t\t\t1.	Registro Federal de Contribuyentes (RFC) del domicilio fiscal y/o Aviso de apertura de establecimiento.\n\t\t\t\t\t\t\t\t2.	Comprobante del domicilio del centro de trabajo.\n\t\t\t\t\t\t\t\t3.	Croquis de localización del domicilio del centro de trabajo.\n\t\t\t\t\t\t\t\t4.	Escritura Pública o Acta Constitutiva que contenga el sello del Registro Público de la Propiedad y del Comercio.\n\t\t\t\t\t\t\t\t5.	Poder Notarial para actos de dominio, de administración o poder especial en donde se especifique que puede realizar toda clase de trámites y firmar documentos ante el IMSS.\n\t\t\t\t\t\t\t\t6.	Identificación oficial vigente del representante legal.\n\t\t\t\t\t\t\t\t7.	Registro Federal de Contribuyentes (RFC) del representante legal.\n\t\t\t\t\t\t\t\t8.	Clave Única de Registro de Población (CURP) del representante legal.\n\t\t\t\t\t\t\t\t9.	Comprobante del domicilio fiscal.\n\t\t\t\t\t\t\t\t10.	En caso de inscribir trabajadores, deberás presentar el formato Aviso de Inscripción del trabajador.\n\t\t\t\t\t\t\t\t11.	Finalización del trámite: Una vez que hayas presentado todos los documentos necesarios, el IMSS procesará tu solicitud y te proporcionará un Número de Registro Patronal.\n\nDe igual forma es recomendable revisar la plataforma del IMSS https://imss.gob.mx/tramites/imss02001g'),
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
