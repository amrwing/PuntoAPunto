import 'package:punto_a_punto/models/models.dart';
import 'package:punto_a_punto/models/perfil_personal.dart';

class SolicitudAsesoria {
  PerfilPersonal perfilSolicitante;
  PerfilPersonal perfilSolicitado;
  String status;
  SolicitudAsesoria(
      {required this.perfilSolicitado,
      required this.perfilSolicitante,
      required this.status});
}
