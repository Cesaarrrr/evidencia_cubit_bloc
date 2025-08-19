part of 'estados_bloc.dart';

sealed class EstadosState extends Equatable {
  const EstadosState();
  
  @override
  List<Object> get props => [];
}

final class EstadosInitial extends EstadosState {}
