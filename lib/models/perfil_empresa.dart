class PerfilEmpresa {
  String nombre;
  String? rfc;
  String? regimen;
  String sector;
  List<String> productos;
  String? slogan;
  String? imagen;
  PerfilEmpresa(
      {required this.nombre,
      this.imagen,
      this.rfc,
      this.regimen,
      this.slogan,
      required this.productos,
      required this.sector});
}
