import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/models/perfil_personal.dart';
import 'package:punto_a_punto/models/solicitud_asesoria.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class CustomPersonScreen extends StatelessWidget {
  const CustomPersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar1(),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //IMAGEN
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              personaSeleccionada["nombre"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'Milker', fontSize: 22),
                            ),
                            Image.asset('${personaSeleccionada["imagen"]}')
                          ],
                        ),
                      ),
                    ),
                  ),

                  //INFORMACIÓN
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '"${personaSeleccionada["presentacion"]}"',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Milker', fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 720)
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            'Estado: ${personaSeleccionada['estado']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ciudad: ${personaSeleccionada['ciudad']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Edad: ${personaSeleccionada['edad']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 15,
                      backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      solicitudesAsesoria.add(SolicitudAsesoria(
                          perfilSolicitado: PerfilPersonal(
                              nombre: personaSeleccionada['nombre'],
                              edad: personaSeleccionada['nombre'],
                              presentacion: personaSeleccionada['presentacion'],
                              ciudad: personaSeleccionada['ciudad'],
                              estado: personaSeleccionada['estado'],
                              telefono: personaSeleccionada['telefono'] ?? ""),
                          perfilSolicitante: PerfilPersonal(
                              nombre: usuarioGlobal.nombreUsuario,
                              edad: usuarioGlobal.edad,
                              presentacion: "",
                              ciudad: "",
                              estado: "",
                              telefono: usuarioGlobal.telefonoUsuario),
                          status: "Pendiente"));
                      context.push("/asesorias_screen");
                    },
                    child: const Center(
                      child: Text(
                        "Solicitar Asesoría",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 93, 166, 1),
                            fontWeight: FontWeight.bold),
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
