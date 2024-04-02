class PerfilPersonal {
  String nombre;
  int edad;
  String telefono;
  String estado;
  String ciudad;
  String? rfc;
  String presentacion;
  PerfilPersonal(
      {required this.nombre,
      this.rfc = "N/A",
      required this.edad,
      required this.presentacion,
      required this.ciudad,
      required this.estado,
      required this.telefono});
  void guardarInformacion() {}
}
