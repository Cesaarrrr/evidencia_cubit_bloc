class MovieModel {
  final String name;
  final String year;

  MovieModel({
    required this.name,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      name: json['name'] ?? "sin nombre",
      year: json['year'] ?? "sin year",
    );
  }
}