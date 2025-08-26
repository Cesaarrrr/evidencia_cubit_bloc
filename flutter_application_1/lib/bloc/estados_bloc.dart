import 'package:flutter_bloc/flutter_bloc.dart';
import 'estados_event.dart';
import 'estados_state.dart';

class EstadosBloc extends Bloc<EstadosEvent, EstadosState> {
  EstadosBloc() : super(const EstadosState()) {
    on<IncrementarContador>((event, emit) {
      emit(state.copyWith(contador: state.contador + 1));
    });
  }
}
