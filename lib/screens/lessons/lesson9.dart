import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Leccion9 extends StatelessWidget {
  const Leccion9({super.key});

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
                      'Algunos puntos clave que debes tener en cuenta al redactar un contrato de compraventa en México:\n\t\t\t\t\t\t\t\t1.	Identificación de las partes: Es fundamental que el contrato especifique claramente quiénes son las partes involucradas en la compraventa.\n\t\t\t\t\t\t\t\t2.	Descripción detallada del objeto: El contrato debe incluir una descripción precisa y detallada del bien o servicio que se está vendiendo.\n\t\t\t\t\t\t\t\t3.	Precio y forma de pago: Es necesario especificar el precio acordado y la forma en que se realizará el pago, ya sea al contado, a plazos, etc.\n\t\t\t\t\t\t\t\t4.	Condiciones de entrega: Se deben establecer claramente las condiciones en las que se entregará el bien o servicio vendido.\n\t\t\t\t\t\t\t\t5.	Garantías: En caso de existir garantías sobre el bien o servicio, éstas deben ser detalladas en el contrato.\n\t\t\t\t\t\t\t\t6.	Plazos y condiciones: Es recomendable definir plazos y condiciones para el cumplimiento de las obligaciones de ambas partes.\n\t\t\t\t\t\t\t\t7.	Cláusulas especiales: En caso de situaciones particulares, se pueden incluir cláusulas especiales que regulen dichas circunstancias.\n\nExisten 3 tipos de contratos con proveedores, cada uno con sus peculiaridades, pros y contras. Conócelos a detalle para seleccionar el que mejor se aplique a tu cadena:\n\t\t\t\t\t\t\t\t1.	Precio Fijo: Este tipo de contrato establece un precio fijo por un producto o servicio durante la duración del acuerdo. Esto garantiza estabilidad financiera para ambas partes, ya que el presupuesto no se ve afectado por las fluctuaciones del mercado, lo que lo convierte en el menos riesgoso.\n\t\t\t\t\t\t\t\t2.	Costos Reembolsables: En estos contratos, el cliente se compromete a pagar todos los costos relacionados con un proyecto, incluidos los honorarios acordados. Esto puede representar un riesgo mayor para el cliente, ya que asume los gastos productivos y de suministro, lo que podría llevar a sorpresas desagradables en cuanto al costo total.\n\t\t\t\t\t\t\t\t3.	Por Tiempos y Materiales: Estos contratos combinan elementos de los dos tipos anteriores, con un componente fijo (como el precio por hora de trabajo) y un componente variable (como la cantidad de horas trabajadas). Son intermedios en términos de riesgo, ya que no son tan seguros como los contratos de precio fijo, pero tampoco tan arriesgados como los de costos reembolsables.\n\nRecuerda que es importante seguir estos consejos para garantizar la validez y claridad del documento, protegiendo así los intereses de ambas partes involucradas. Si tienes alguna duda, te recomendaría que busques asesoría legal para asegurarte de que el contrato cumpla con todas las leyes y regulaciones vigentes.'),
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
