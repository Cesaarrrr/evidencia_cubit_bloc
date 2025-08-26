import 'package:equatable/equatable.dart';

class EstadosState extends Equatable {
  final int contador;

  const EstadosState({this.contador = 0});

  EstadosState copyWith({int? contador}) {
    return EstadosState(contador: contador ?? this.contador);
  }

  @override
  List<Object> get props => [contador];
}
