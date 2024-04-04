import 'package:flutter/material.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class ContractsScreen extends StatelessWidget {
  const ContractsScreen({super.key});

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
                "Contratos actuales",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contratosGlobal.length,
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              contratosGlobal[index].nombreProveedor,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(contratosGlobal[index].tipoDeContrato)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Fecha de terminación ${contratosGlobal[index].fechaTerminacion.toIso8601String().split('T')[0]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ((DateTime.now()
                                              .difference(contratosGlobal[index]
                                                  .fechaTerminacion)
                                              .inDays <
                                          20))
                                      ? Colors.green[400]
                                      : Colors.red[400]),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ListTile(
                          leading: const Icon(
                            Icons.edit_document,
                          ),
                          trailing: TextButton(
                              onPressed: () {
                                //VER INFORMACIÓN DEL CONTRATO
                              },
                              child: const Text(
                                "Ver detalles",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                      )
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
