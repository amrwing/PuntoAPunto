import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:punto_a_punto/global/global.dart';
import 'package:punto_a_punto/models/perfil_empresa.dart';
import 'package:punto_a_punto/models/perfil_personal.dart';
import 'package:punto_a_punto/models/producto.dart';

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
      productos: [
        Producto(
          nombre: "Ladrillos",
          descripcion: "Ladrillos de alta calidad para construcción",
          precioMayoreo: 50.0,
          precioUnidad: 60.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Martillos",
          descripcion: "Martillos resistentes para todo tipo de trabajos",
          precioMayoreo: 20.0,
          precioUnidad: 25.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Excavadoras",
          descripcion: "Excavadoras de gran potencia para obras grandes",
          precioMayoreo: 50000.0,
          precioUnidad: 55000.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
      ],
      slogan: "Construyendo tus sueños",
      imagen: "assets/images/constructoratorres.jpg",
      telefonoContacto: "555-123-4567"),
  PerfilEmpresa(
      nombre: "Tecnología Avanzada SA de CV",
      rfc: "XYZ987654POI",
      regimen: "Personas Morales",
      sector: "Tecnología",
      productos: [
        Producto(
          nombre: "PC Gamer",
          descripcion: "Computadora potente diseñada para juegos",
          precioMayoreo: 3000.0,
          precioUnidad: 3500.0,
          metodoEntrega: "Envío por mensajería",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Laptop Ultrabook",
          descripcion: "Laptop ligera y potente para uso diario",
          precioMayoreo: 1500.0,
          precioUnidad: 1700.0,
          metodoEntrega: "Envío por mensajería",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Tablet Android",
          descripcion: "Tablet con sistema operativo Android",
          precioMayoreo: 300.0,
          precioUnidad: 350.0,
          metodoEntrega: "Envío por mensajería",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Teclado Gaming",
          descripcion: "Teclado mecánico diseñado para juegos",
          precioMayoreo: 50.0,
          precioUnidad: 60.0,
          metodoEntrega: "Envío por mensajería",
          plazosDeEntrega: ["Por solicitud"],
        ),
      ],
      slogan: "Innovación al alcance de todos",
      imagen: "assets/images/tecnologiaavanzada.jpg",
      telefonoContacto: "555-987-6543"),
  PerfilEmpresa(
      nombre: "Dulces Delicias",
      rfc: "LMN456789GHI",
      regimen: "Personas Morales",
      sector: "Alimentación",
      productos: [
        Producto(
          nombre: "Pastel de Chocolate",
          descripcion: "Delicioso pastel de chocolate con cobertura cremosa",
          precioMayoreo: 30.0,
          precioUnidad: 35.0,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 3 días", "Cada 7 días", "Cada 15 días"],
        ),
        Producto(
          nombre: "Galletas de Avena",
          descripcion: "Galletas crujientes de avena con trozos de chocolate",
          precioMayoreo: 15.0,
          precioUnidad: 18.0,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 3 días", "Cada 7 días", "Cada 15 días"],
        ),
        Producto(
          nombre: "Paletas de Caramelo",
          descripcion: "Paletas de caramelo de diferentes sabores",
          precioMayoreo: 5.0,
          precioUnidad: 7.0,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 7 días", "Cada 15 días"],
        ),
        Producto(
          nombre: "Tarta de Frutas",
          descripcion: "Tarta fresca de frutas de temporada",
          precioMayoreo: 40.0,
          precioUnidad: 45.0,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 3 días", "Cada 7 días", "Cada 15 días"],
        ),
      ],
      slogan: "Endulzando tu vida",
      imagen: "assets/images/dulcesdelicias.jpg",
      telefonoContacto: "555-456-7890"),
  PerfilEmpresa(
      nombre: "Energía Solar SA de CV",
      rfc: "PQR123456JKL",
      regimen: "Personas Morales",
      sector: "Energía Renovable",
      productos: [
        Producto(
          nombre: "Panel Solar de 100W",
          descripcion: "Panel solar monocristalino de alta eficiencia",
          precioMayoreo: 200.0,
          precioUnidad: 220.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Calentador Solar para Agua",
          descripcion: "Calentador solar de agua con capacidad para 100 litros",
          precioMayoreo: 500.0,
          precioUnidad: 550.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Batería de Ciclo Profundo",
          descripcion:
              "Batería de ciclo profundo para sistemas de energía solar",
          precioMayoreo: 300.0,
          precioUnidad: 330.0,
          metodoEntrega: "A domicilio por parte de la empresa",
          plazosDeEntrega: ["Por solicitud"],
        ),
      ],
      slogan: "Energía limpia para un futuro sostenible",
      imagen: "assets/images/energiasolar.jpg",
      telefonoContacto: "555-321-0987"),
  PerfilEmpresa(
      nombre: "Agricultura Verde SA",
      rfc: "FGH987654LMN",
      regimen: "Personas Morales",
      sector: "Agricultura",
      productos: [
        Producto(
          nombre: "Manzanas",
          descripcion: "Manzanas frescas y jugosas",
          precioMayoreo: 1.5,
          precioUnidad: 2.0,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Lechuga",
          descripcion: "Lechuga orgánica recién cosechada",
          precioMayoreo: 0.5,
          precioUnidad: 0.7,
          metodoEntrega: "Envío por paquetería",
          plazosDeEntrega: ["Por solicitud"],
        ),
        Producto(
          nombre: "Arroz Integral (KG)",
          descripcion: "Arroz integral de cultivo ecológico",
          precioMayoreo: 2.0,
          precioUnidad: 2.5,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 3 días", "Cada 7 días", "Cada 15 días"],
        ),
        Producto(
          nombre: "Tomates",
          descripcion: "Tomates maduros y sabrosos",
          precioMayoreo: 1.0,
          precioUnidad: 1.5,
          metodoEntrega: "Entrega a domicilio",
          plazosDeEntrega: ["Cada 3 días", "Cada 7 días", "Cada 15 días"],
        ),
      ],
      slogan: "Cultivando la salud y el bienestar",
      imagen: "assets/images/agriculturaverdesa.jpeg",
      telefonoContacto: "555-876-5432"),
];

//PERFILES DE PERSONAS CON FINES ILUSTRATIVOS
List<PerfilPersonal> perfilesPersonales = [
  PerfilPersonal(
      nombre: "Ana García",
      edad: "28",
      telefono: "555-1234",
      estado: "Ciudad de México",
      ciudad: "CDMX",
      presentacion:
          "¡Hola! Soy Ana, una apasionada del diseño de interiores y emprendedora en el mundo del diseño de muebles y decoración.",
      imagen: "assets/images/anagarcia.jpg"),
  PerfilPersonal(
      nombre: "Carlos Martínez",
      edad: "35",
      telefono: "555-5678",
      estado: "Nuevo León",
      ciudad: "Monterrey",
      presentacion:
          "¡Hola a todos! Me llamo Carlos y soy un ingeniero de software con experiencia en desarrollo móvil. También estoy involucrado en proyectos de emprendimiento tecnológico.",
      imagen: "assets/images/carlosmartinez.jpg"),
  PerfilPersonal(
      nombre: "Laura Rodríguez",
      edad: "42",
      telefono: "555-9012",
      estado: "Jalisco",
      ciudad: "Guadalajara",
      presentacion:
          "Saludos, soy Laura y me especializo en la gestión de proyectos de construcción. Además, soy fundadora de una empresa de construcción innovadora y sostenible.",
      imagen: "assets/images/laurarodriguez.jpg"),
  PerfilPersonal(
      nombre: "Eduardo López",
      edad: "30",
      telefono: "555-3456",
      estado: "Puebla",
      ciudad: "Puebla",
      presentacion:
          "¡Hola! Mi nombre es Eduardo y soy un chef profesional con experiencia en cocina internacional. Actualmente estoy trabajando en el lanzamiento de mi propio restaurante gourmet.",
      imagen: "assets/images/eduardolopez.jpg"),
  PerfilPersonal(
      nombre: "María Sánchez",
      edad: "29",
      telefono: "555-7890",
      estado: "Veracruz",
      ciudad: "Veracruz",
      presentacion:
          "Soy María y me dedico a la consultoría financiera para empresas pequeñas y medianas. También soy emprendedora y estoy lanzando mi propia firma de consultoría especializada en startups.",
      imagen: "assets/images/mariasanchez.jpg"),
];
final TextEditingController searchBarTextField = TextEditingController();
final focusNode = FocusNode();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 8,
                  ),
                  child: Image.asset(
                    width: 80,
                    height: 40,
                    'assets/logos/ic_launcher.jpg', // Ruta del archivo SVG en assets
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "¡Bienvenido ${usuarioGlobal.nombreUsuario.split(" ")[0]}!\nQueremos darte lo mejor",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
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
                              context.push("/contracts_screen");
                            },
                            child: const Text(
                              "Mis contratos",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Card(
                        child: TextButton(
                            onPressed: () {
                              context.push("/asesorias_screen");
                            },
                            child: const Text(
                              "Mis asesorías",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                    width: 360,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                            width: 300,
                            height: 40,
                            child: TextField(
                              focusNode: focusNode,
                              onTapOutside: (event) => focusNode.unfocus(),
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2)))),
                              controller: searchBarTextField,
                            )),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Podría interesarte",
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  perfilesEmpresas[index].imagen,
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        perfilesEmpresas[index].nombre,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        perfilesEmpresas[index].slogan,
                                        style: const TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.black,
                                      elevation: 15,
                                      backgroundColor:
                                          const Color.fromRGBO(254, 217, 37, 1),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                    onPressed: () {
                                      //LLEVAR A PAGINA DE PROVEEDOR
                                      empresaSeleccionada["imagen"] =
                                          perfilesEmpresas[index].imagen;
                                      empresaSeleccionada["nombre"] =
                                          perfilesEmpresas[index].nombre;
                                      empresaSeleccionada["productos"] =
                                          perfilesEmpresas[index].productos;
                                      empresaSeleccionada["regimen"] =
                                          perfilesEmpresas[index].regimen;
                                      empresaSeleccionada["sector"] =
                                          perfilesEmpresas[index].sector;
                                      empresaSeleccionada["slogan"] =
                                          perfilesEmpresas[index].slogan;
                                      empresaSeleccionada["telefonoContacto"] =
                                          perfilesEmpresas[index]
                                              .telefonoContacto;
                                      context.push("/custom_provider_screen");
                                    },
                                    child: const Center(
                                      child: Text(
                                        "Me interesa",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(38, 93, 166, 1),
                                            fontWeight: FontWeight.bold),
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
                  ),
                ),
                const Divider(
                  height: 50,
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Conoce a emprendedores",
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  perfilesPersonales[index].imagen ??
                                      "assets/images/loading.gif",
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        perfilesPersonales[index].nombre,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        perfilesPersonales[index].presentacion,
                                        style: const TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () {
                                      //LLEVAR A PAGINA DE PROVEEDOR
                                      personaSeleccionada['nombre'] =
                                          perfilesPersonales[index].nombre;
                                      personaSeleccionada['ciudad'] =
                                          perfilesPersonales[index].ciudad;
                                      personaSeleccionada['edad'] =
                                          perfilesPersonales[index].edad;
                                      personaSeleccionada['presentacion'] =
                                          perfilesPersonales[index]
                                              .presentacion;
                                      personaSeleccionada['imagen'] =
                                          perfilesPersonales[index].imagen;
                                      personaSeleccionada['estado'] =
                                          perfilesPersonales[index].estado;
                                      context.push("/custom_person_screen");
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Conocer más",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
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
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 50,
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Aprende más",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: SizedBox(
                    height: 700,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: leccionesGlobales.length,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              leccionesGlobales[index].ima,
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
                                          leccionesGlobales[index].nombre,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          leccionesGlobales[index].resumen,
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
                                          onPressed: () => context.push(
                                              leccionesGlobales[index].path),
                                          child: const Text(
                                            "Me interesa",
                                            style:
                                                TextStyle(color: Colors.black),
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
    );
  }
}
