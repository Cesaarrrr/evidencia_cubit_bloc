abstract class CubitoState {}

class CubitoLoading extends CubitoState {}

class CubitoLoaded extends CubitoState {
  final List<dynamic> posts;
  CubitoLoaded(this.posts);
}

class CubitoError extends CubitoState {
  final String message;
  CubitoError(this.message);
}
