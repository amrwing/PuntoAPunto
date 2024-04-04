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
                    '\nRequisitos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n• CURP\n• Comprobante de domicilio fiscal\n• Identificación oficial\n• Acta constitutiva de la empresa'),
                  const Text(
                    '\nPresencial',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t•	Acude con la documentación del trámite a la oficina del SAT de tu preferencia.\n\t\t\t\t\t\t\t\t•	Entrega la documentación al personal que atenderá tu trámite.\n\t\t\t\t\t\t\t\t•	Recibe tu solicitud y acuse único de inscripción en el Registro Federal de Contribuyentes, o acuse de presentación inconclusa de solicitud de inscripción o aviso de actualización en el RFC, que contiene el motivo por el cual no se concluyó su trámite.'),
                  const Text(
                    '\nEn línea',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t• Ingresa al Portal del SAT.\n\t\t\t\t\t\t\t\t• Selecciona la pestaña "Empresas", posteriormente el apartado "Trámites del RFC", seguido de Inscripción al RFC y por último la opción "Preinscribe tu empresa en el RFC" (https://www.sat.gob.mx/aplicacion/33805/preinscribe-tu-empresa-en-el-rfc).\n\t\t\t\t\t\t\t\t• Llena los datos solicitados en el formulario y confirma la información.\n\t\t\t\t\t\t\t\t• Imprime el acuse de preinscripción al Registro Federal de Contribuyentes.'),
                  const Text(
                    '\n¿Qué documentos obtengo?:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      '\n\t\t\t\t\t\t\t\t• Solicitud de inscripción al Registro Federal de Contribuyentes.\n\t\t\t\t\t\t\t\t• Acuse único de inscripción al Registro Federal de Contribuyentes que contiene cédula de identificación fiscal y código de barras bidimensional (QR).\n\t\t\t\t\t\t\t\t• Acuse de preinscripción en el Registro Federal de Contribuyentes, en el caso de que el trámite se haya iniciado en el Portal del SAT.\n\t\t\t\t\t\t\t\t• Acuse de presentación inconclusa de solicitud de inscripción o aviso de actualización al Registro Federal de Contribuyentes'),
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
