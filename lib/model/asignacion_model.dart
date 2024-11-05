// Clase Asignacion
import 'package:study_mate/model/materia_model.dart';

class Asignacion {
  DateTime fechaProgramada;
  String nombre;
  String descripcion;
  bool completada;
  int dificultad;
  String tipo;
  Materia? materia;

  Asignacion({
    required this.fechaProgramada,
    required this.nombre,
    required this.descripcion,
    this.completada = false,
    required this.dificultad,
    required this.tipo,
    this.materia,
  });

  // Método para calcular el tiempo restante hasta la fecha programada
  double calcularTiempoRestante() {
    final tiempoRestante = fechaProgramada
        .difference(DateTime.now())
        .inHours;
    return tiempoRestante / 24; // Retorna el tiempo restante en días
  }

  // Método para cambiar el estado de completada
  void cambiarEstado() {
    completada = !completada;
  }
}