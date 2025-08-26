part of 'cubito_cubit.dart';

sealed class CubitoState extends Equatable {
  const CubitoState();

  @override
  List<Object> get props => [];
}

final class CubitoInitial extends CubitoState {}