import 'package:flutter_bloc/flutter_bloc.dart';
import 'estados_event.dart';
import 'estados_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstadosBloc extends Bloc<EstadosEvent, EstadosState> {
  EstadosBloc() : super(EstadosLoading()) {
    on<CargarUsuarios>((event, emit) async {
      try {
        final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
        if (response.statusCode == 200) {
          final data = json.decode(response.body) as List;
          emit(EstadosLoaded(data));
        } else {
          emit(EstadosError("Error al cargar usuarios"));
        }
      } catch (e) {
        emit(EstadosError(e.toString()));
      }
    });
  }
}
