import 'package:punto_a_punto/models/contrato.dart';
import 'package:punto_a_punto/models/usuario.dart';

const Map<String, dynamic> informacionOnboarding = {
  "texto_pantalla_1": "PuntoAPunto"
};
Map<String, dynamic> empresaSeleccionada = {};
Map<String, dynamic> productoSeleccionado = {};
late Usuario usuarioGlobal;
final List<Contrato> contratosGlobal = [
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
