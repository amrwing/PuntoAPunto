class Producto {
  String nombre;
  String descripcion;
  double precioMayoreo;
  double precioUnidad;
  List<String> plazosDeEntrega;
  String metodoEntrega;
  Producto(
      {required this.nombre,
      required this.descripcion,
      required this.precioMayoreo,
      required this.precioUnidad,
      required this.metodoEntrega,
      required this.plazosDeEntrega});
}
