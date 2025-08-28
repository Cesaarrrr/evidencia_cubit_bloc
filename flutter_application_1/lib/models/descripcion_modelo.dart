class DesModel {
  final String descripcion;

  DesModel({required this.descripcion,});

  factory DesModel.fromJson(Map<String, dynamic> json) {
    return DesModel(
      descripcion: json['descripcion'] ?? "sin descripcion",

    );
  }
}