class PerfilPersonal {
  String nombre;
  String edad;
  String telefono;
  String estado;
  String ciudad;
  String? rfc;
  String presentacion;
  String? imagen;
  PerfilPersonal(
      {this.imagen,
      required this.nombre,
      this.rfc = "N/A",
      required this.edad,
      required this.presentacion,
      required this.ciudad,
      required this.estado,
      required this.telefono});
  void guardarInformacion() {}
}
