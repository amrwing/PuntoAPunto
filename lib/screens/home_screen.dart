import 'package:flutter/material.dart';
import 'package:punto_a_punto/models/perfil_empresa.dart';
import 'package:punto_a_punto/models/perfil_personal.dart';
import 'package:punto_a_punto/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//PERFILES FICTICIOS CON FINES ILUSTRATIVOS
List<PerfilEmpresa> perfilesEmpresas = [
  PerfilEmpresa(
      nombre: "Constructora Torres",
      rfc: "ABC123456DEF",
      regimen: "Personas Morales",
      sector: "Construcción",
      productos: ["Materiales de construcción", "Herramientas", "Maquinaria"],
      slogan: "Construyendo tus sueños",
      imagen: "assets/images/constructoratorres.jpg"),
  PerfilEmpresa(
      nombre: "Tecnología Avanzada SA de CV",
      rfc: "XYZ987654POI",
      regimen: "Personas Morales",
      sector: "Tecnología",
      productos: ["Computadoras", "Laptops", "Tablets", "Accesorios"],
      slogan: "Innovación al alcance de todos",
      imagen: "assets/images/tecnologiaavanzada.jpg"),
  PerfilEmpresa(
      nombre: "Dulces Delicias",
      rfc: "LMN456789GHI",
      regimen: "Personas Morales",
      sector: "Alimentación",
      productos: ["Pasteles", "Galletas", "Dulces", "Postres"],
      slogan: "Endulzando tu vida",
      imagen: "assets/images/dulcesdelicias.jpg"),
  PerfilEmpresa(
      nombre: "Energía Solar SA de CV",
      rfc: "PQR123456JKL",
      regimen: "Personas Morales",
      sector: "Energía Renovable",
      productos: ["Paneles solares", "Calentadores solares", "Baterías"],
      slogan: "Energía limpia para un futuro sostenible",
      imagen: "assets/images/energiasolar.jpg"),
  PerfilEmpresa(
      nombre: "Agricultura Verde SA",
      rfc: "FGH987654LMN",
      regimen: "Personas Morales",
      sector: "Agricultura",
      productos: ["Frutas", "Verduras", "Cereales", "Hortalizas"],
      slogan: "Cultivando la salud y el bienestar",
      imagen: "assets/images/agriculturaverdesa.jpeg"),
];

//PERFILES DE PERSONAS CON FINES ILUSTRATIVOS
List<PerfilPersonal> perfilesPersonales = [
  PerfilPersonal(
    nombre: "Ana García",
    edad: 28,
    telefono: "555-1234",
    estado: "Ciudad de México",
    ciudad: "CDMX",
    presentacion: "¡Hola! Soy Ana, una apasionada del diseño de interiores.",
  ),
  PerfilPersonal(
    nombre: "Carlos Martínez",
    edad: 35,
    telefono: "555-5678",
    estado: "Nuevo León",
    ciudad: "Monterrey",
    presentacion:
        "¡Hola a todos! Me llamo Carlos y soy un ingeniero de software con experiencia en desarrollo móvil.",
  ),
  PerfilPersonal(
    nombre: "Laura Rodríguez",
    edad: 42,
    telefono: "555-9012",
    estado: "Jalisco",
    ciudad: "Guadalajara",
    presentacion:
        "Saludos, soy Laura y me especializo en la gestión de proyectos de construcción.",
  ),
  PerfilPersonal(
    nombre: "Eduardo López",
    edad: 30,
    telefono: "555-3456",
    estado: "Puebla",
    ciudad: "Puebla",
    presentacion:
        "¡Hola! Mi nombre es Eduardo y soy un chef profesional con experiencia en cocina internacional.",
  ),
  PerfilPersonal(
    nombre: "María Sánchez",
    edad: 29,
    telefono: "555-7890",
    estado: "Veracruz",
    ciudad: "Veracruz",
    presentacion:
        "Soy María y me dedico a la consultoría financiera para empresas pequeñas y medianas.",
  ),
  PerfilPersonal(
    nombre: "Daniel Ramírez",
    edad: 25,
    telefono: "555-2345",
    estado: "Querétaro",
    ciudad: "Querétaro",
    presentacion:
        "¡Hola a todos! Soy Daniel y estoy buscando oportunidades laborales en el área de marketing digital.",
  ),
  PerfilPersonal(
    nombre: "Fernanda Pérez",
    edad: 31,
    telefono: "555-6789",
    estado: "Guanajuato",
    ciudad: "León",
    presentacion:
        "Soy Fernanda, una diseñadora gráfica con pasión por la creatividad y la innovación.",
  ),
  PerfilPersonal(
    nombre: "Alejandro González",
    edad: 27,
    telefono: "555-1234",
    estado: "Michoacán",
    ciudad: "Morelia",
    presentacion:
        "¡Hola! Me llamo Alejandro y soy un ingeniero civil con experiencia en diseño y construcción de infraestructuras.",
  ),
  PerfilPersonal(
    nombre: "Paula Martínez",
    edad: 33,
    telefono: "555-5678",
    estado: "Sinaloa",
    ciudad: "Culiacán",
    presentacion:
        "Saludos, soy Paula y me dedico a la consultoría legal para empresas en temas laborales y de propiedad intelectual.",
  ),
  PerfilPersonal(
    nombre: "Roberto Torres",
    edad: 40,
    telefono: "555-9012",
    estado: "Tamaulipas",
    ciudad: "Tampico",
    presentacion:
        "¡Hola! Mi nombre es Roberto y tengo experiencia en el sector financiero, especialmente en inversiones y gestión de patrimonio.",
  ),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: const CustomAppBar1(),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "¡Bienvenido!\nQueremos darte lo mejor",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          child: TextButton(
                              onPressed: () {
                                //LLEVAR A PAGINA DE MIS CONTRATOS
                              },
                              child: const Text(
                                "Mis contratos",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        Card(
                          child: TextButton(
                              onPressed: () {
                                //LLEVAR A PAGINA DE MIS CURSOS
                              },
                              child: const Text(
                                "Mis cursos",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        Card(
                          child: TextButton(
                              onPressed: () {
                                //LLEVAR A PAGINA DE MIS CURSOS
                              },
                              child: const Text(
                                "Mis oportunidades",
                                style: TextStyle(color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Proveedores",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: perfilesEmpresas.length,
                        itemBuilder: (context, index) => Card(
                          elevation: 3,
                          color: Colors.white,
                          child: SizedBox(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    perfilesEmpresas[index].imagen ??
                                        "assets/images/loading.jpg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                  SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          perfilesEmpresas[index].nombre,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          perfilesEmpresas[index].slogan!,
                                          style: const TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: TextButton(
                                        onPressed: () {
                                          //LLEVAR A PAGINA DE PROVEEDOR
                                        },
                                        child: Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Me interesa",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 80,
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Conoce más",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: perfilesPersonales.length,
                        itemBuilder: (context, index) => Card(
                          child: SizedBox(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    child: Text(
                                      perfilesPersonales[index].nombre,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    color: const Color(0xFFFED925),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              //TODO PANTALLA DE "Aviso de privacidad"
                            },
                            child: const Text(
                              "Aviso de privacidad",
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton(
                            onPressed: () {
                              //TODO PANTALLA DE "Términos y condiciones"
                            },
                            child: const Text(
                              "Terminos y condiciones",
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton(
                            onPressed: () {
                              //TODO PANTALLA DE "Acerca de nosotros"
                            },
                            child: const Text(
                              "Acerca de nosotros",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
