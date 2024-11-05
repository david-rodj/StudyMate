import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'crear_materia_state.dart';

class CrearMateriaCubit extends Cubit<CrearMateriaState> {
  CrearMateriaCubit() : super(CrearMateriaInitial());
}
