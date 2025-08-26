import 'package:equatable/equatable.dart';

abstract class EstadosEvent extends Equatable {
  const EstadosEvent();

  @override
  List<Object> get props => [];
}

class IncrementarContador extends EstadosEvent {}
