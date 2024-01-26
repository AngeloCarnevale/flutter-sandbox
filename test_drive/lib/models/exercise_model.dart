class ExerciseModel {
  String id;
  String name;
  String description;
  String group;

  String? urlImage;

  ExerciseModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.group});

  ExerciseModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        description = map["description"],
        group = map["group"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "group": group,
      "urlImage": urlImage
    };
  }
}
