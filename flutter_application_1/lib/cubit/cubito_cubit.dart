import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cubito_state.dart';

class CubitoCubit extends Cubit<CubitoState> {
  CubitoCubit() : super(CubitoInitial());
}
