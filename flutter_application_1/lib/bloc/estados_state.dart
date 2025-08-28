abstract class EstadosState {}

class EstadosLoading extends EstadosState {}

class EstadosLoaded extends EstadosState {
  final List<dynamic> usuarios;
  EstadosLoaded(this.usuarios);
}

class EstadosError extends EstadosState {
  final String message;
  EstadosError(this.message);
}
