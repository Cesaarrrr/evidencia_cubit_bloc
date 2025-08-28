import 'package:bloc/bloc.dart';
import 'cubito_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CubitoCubit extends Cubit<CubitoState> {
  CubitoCubit() : super(CubitoLoading());

  Future<void> cargarPosts() async {
    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        emit(CubitoLoaded(data.take(5).toList())); // solo 5 primeros
      } else {
        emit(CubitoError("Error al cargar los posts"));
      }
    } catch (e) {
      emit(CubitoError(e.toString()));
    }
  }
}
