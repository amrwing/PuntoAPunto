import 'package:flutter/material.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class AsesoriasScreen extends StatelessWidget {
  const AsesoriasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: const CustomAppBar1(),
        body: SafeArea(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Solicitud de asesorías",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: solicitudesAsesoria.length,
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  solicitudesAsesoria[index]
                                      .perfilSolicitado
                                      .nombre,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          const Expanded(child: SizedBox()),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.chat))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              solicitudesAsesoria[index]
                                  .perfilSolicitado
                                  .presentacion,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, bottom: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              solicitudesAsesoria[index].status,
                              style: TextStyle(
                                  color: (solicitudesAsesoria[index].status ==
                                          "Pendiente")
                                      ? Colors.red
                                      : Colors.amber),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
