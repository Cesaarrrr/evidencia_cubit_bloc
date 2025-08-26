import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'cubito_state.dart';

class CubitoCubit extends Cubit<CubitoState> {
  CubitoCubit() : super(CubitoInitial());

  void mostrarMensaje() {
    emit(CubitoMensaje("¡Hola! Has presionado el botón 😎"));
  }
}

// Nuevo estado para manejar el mensaje
final class CubitoMensaje extends CubitoState {
  final String mensaje;

  const CubitoMensaje(this.mensaje);

  @override
  List<Object> get props => [mensaje];
}
