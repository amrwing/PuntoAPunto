import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../models/models.dart';

class Escuela extends StatefulWidget {
  const Escuela({super.key});

  @override
  State<Escuela> createState() => _EscuelaState();
}

List<Leccion> lecciones = [
  Leccion(
    nombre: 'Consigue tu e-firma',
    resumen:
        'En esta lección aprenderás lo necesario para realizar este importante trámite, el cuál será muy importante para continuar con tu proceso de formalización.',
    path: '/lesson1',
    ima: 'assets/images/escuela/efirma.jpg',
  ),
  Leccion(
    nombre: 'Autorización de uso de denominación o razón social',
    resumen:
        'En esta lección aprenderás el proceso para poder hacer registrar el nombre de tu empresa.',
    path: '/lesson2',
    ima: 'assets/images/escuela/razon.png',
  ),
  Leccion(
    nombre: 'Constitución de una sociedad',
    resumen:
        'En esta lección conocerás los distintos tipos de sociedades, así como los requisitos para formar parte de una y el proceso para hacerlo.',
    path: '/lesson3',
    ima: 'assets/images/escuela/sociedad.png',
  ),
  Leccion(
    nombre: 'Aviso de uso del nombre de tu empresa',
    resumen:
        'En esta lección conocerás los requisitos y proceso para que tú y solo tú puedas usar el nombre de tu empresa.',
    path: '/lesson4',
    ima: 'assets/images/escuela/aviso.jpg',
  ),
  Leccion(
    nombre: 'Inscripción al Registro Público de Comercio',
    resumen:
        'En esta lección aprenderás por qué es importante realizar tu registro público de comercio y el cómo hacerlo.',
    path: '/lesson5',
    ima: 'assets/images/escuela/rpc.png',
  ),
  Leccion(
    nombre:
        'Dar de alta mi empresa en el Registro Federal de Contribuyentes (SAT)',
    resumen:
        'En esta lección, además de aprender a como realizar tu registro ante el SAT, conocerás las ventajas del mismo para tu empresa.',
    path: '/lesson6',
    ima: 'assets/images/escuela/sat.png',
  ),
  Leccion(
    nombre: 'Alta patronal en el IMSS',
    resumen:
        'En esta lección conocerás los grandes beneficios que te trae tener tu empresa registrada en el IMSS (aunque solo seas tú el miembro de tu empresa), además del proceso para obtenerlos.',
    path: '/lesson7',
    ima: 'assets/images/escuela/imss.jpg',
  ),
  Leccion(
    nombre: 'Inscripción ante los demás organismos requeridos',
    resumen:
        'En esta lección conocerás la importancia de conocer los diferentes organismos que existen en el país, para obtener permisos y beneficios para que tu empresa pueda seguir operando de manera legal y segura.',
    path: '/lesson8',
    ima: 'assets/images/escuela/mexico.jpeg',
  ),
];

class _EscuelaState extends State<Escuela> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height * 0.7;
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: altura,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lecciones.length,
                      itemBuilder: (context, index) => Card(
                        surfaceTintColor: Colors.blue,
                        elevation: 3,
                        color: Colors.white,
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width < 1000)
                              ? MediaQuery.of(context).size.width * 0.8
                              : MediaQuery.of(context).size.width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 30,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            lecciones[index].ima,
                                            width: 300,
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        lecciones[index].nombre,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        lecciones[index].resumen,
                                        style: const TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () =>
                                            context.push(lecciones[index].path),
                                        child: const Text(
                                          "Me interesa",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "Ya cuentas con tu información fiscal?",
                style: TextStyle(fontFamily: 'Milker'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 15,
                    backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
                    maximumSize: const Size(210, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () async {
                    //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                    context.push("/register_screen");
                  },
                  child: const Center(
                    child: Text(
                      "QUIERO REGISTRARME",
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
    );
  }
}
