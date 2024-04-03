import 'package:flutter/material.dart';
import 'package:punto_a_punto/models/contrato.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class ContractsScreen extends StatelessWidget {
  ContractsScreen({super.key});
  final List<Contrato> contratos = [
    Contrato(
      nombreProveedor: "Empresa Constructora S.A. de C.V.",
      nombreComprador: "Inmobiliaria Progreso",
      objetoDeContrato: "Construcción de Edificio Residencial",
      derechosYObligaciones:
          "Las partes acuerdan los derechos y obligaciones para la construcción del edificio.",
      garantias:
          "La empresa constructora garantiza la calidad y seguridad de la construcción.",
      tipoDeContrato: "Contrato de Construcción",
      frecuenciaDeProvision: "Una vez al mes",
      fechaInicio: DateTime(2024, 1, 1),
      fechaTerminacion: DateTime(2025, 1, 1),
    ),
    Contrato(
      nombreProveedor: "Distribuidora de Tecnología S.A. de C.V.",
      nombreComprador: "Empresa Tecnológica Innovadora",
      objetoDeContrato: "Suministro de Equipos Informáticos",
      derechosYObligaciones:
          "Las partes acuerdan los derechos y obligaciones para el suministro de equipos informáticos.",
      garantias:
          "La distribuidora garantiza el funcionamiento correcto de los equipos suministrados.",
      tipoDeContrato: "Contrato de Suministro",
      frecuenciaDeProvision: "A demanda",
      fechaInicio: DateTime(2024, 2, 15),
      fechaTerminacion: DateTime(2024, 12, 31),
    ),
    Contrato(
      nombreProveedor: "Consultores Financieros Profesionales S.C.",
      nombreComprador: "Startups Innovadoras",
      objetoDeContrato: "Consultoría Financiera y de Negocios",
      derechosYObligaciones:
          "Las partes acuerdan los derechos y obligaciones para la consultoría financiera y de negocios.",
      garantias:
          "Los consultores garantizan la confidencialidad y veracidad de la información proporcionada.",
      tipoDeContrato: "Contrato de Consultoría",
      frecuenciaDeProvision: "A convenir",
      fechaInicio: DateTime(2024, 3, 10),
      fechaTerminacion: DateTime(2025, 3, 10),
    ),
    // Puedes agregar más contratos aquí según sea necesario
  ];

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
                itemCount: contratos.length,
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              contratos[index].nombreProveedor,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(contratos[index].tipoDeContrato)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Fecha de terminación ${contratos[index].fechaTerminacion.toIso8601String().split('T')[0]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ((DateTime.now()
                                              .difference(contratos[index]
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
