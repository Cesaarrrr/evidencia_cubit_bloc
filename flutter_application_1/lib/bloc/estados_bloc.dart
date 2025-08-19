import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'estados_event.dart';
part 'estados_state.dart';

class EstadosBloc extends Bloc<EstadosEvent, EstadosState> {
  EstadosBloc() : super(EstadosInitial()) {
    on<EstadosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
