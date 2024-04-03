import 'package:punto_a_punto/models/producto.dart';

class PerfilEmpresa {
  String nombre;
  String rfc;
  String regimen;
  String sector;
  List<Producto> productos;
  String slogan;
  String imagen;
  String telefonoContacto;

  PerfilEmpresa({
    required this.nombre,
    required this.rfc,
    required this.regimen,
    required this.sector,
    required this.productos,
    required this.slogan,
    required this.imagen,
    required this.telefonoContacto,
  });
}
