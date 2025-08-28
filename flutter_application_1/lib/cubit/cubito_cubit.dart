import 'package:bloc/bloc.dart';
import 'cubito_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CubitoCubit extends Cubit<CubitoState> {
  CubitoCubit() : super(CubitoLoading());

  Future<void> fetchData() async {
    emit(CubitoLoading());
    try {
      final url = Uri.parse(
        "https://mocki.io/v1/fa975218-53c3-4a60-81a2-5c3cd23f3f89",
      );
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<String> materias = (data["pelis"] as List)
            .map((m) => m["nombre"].toString())
            .toList();

        emit(CubitoLoaded(materias));
      } else {
        emit(CubitoError("Error: ${response.statusCode}"));
      }
    } catch (e) {
      emit(CubitoError("Error al cargar pelis"));
    }
  }
}
