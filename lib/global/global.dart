import 'package:punto_a_punto/models/contrato.dart';
import 'package:punto_a_punto/models/lecciones.dart';
import 'package:punto_a_punto/models/usuario.dart';

const Map<String, dynamic> informacionOnboarding = {
  "texto_pantalla_1": "PuntoAPunto"
};
Map<String, dynamic> empresaSeleccionada = {};
Map<String, dynamic> productoSeleccionado = {};
late Usuario usuarioGlobal;
List<Leccion> leccionesGlobales = [
  Leccion(
    nombre: '¿Qué es un contrato de compra venta?',
    resumen:
        'Aquí podrás ver los tipos de contratos que existen y lo que significan cada uno de los apartados de un contrato',
    path: '/lesson9',
    ima: 'assets/images/contrato.jpg',
  ),
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
