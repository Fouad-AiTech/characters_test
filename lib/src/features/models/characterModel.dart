class CharacterModel {
  final String name;
  final String actor;
  final String house;
  final String image;

  CharacterModel({required this.name, required this.actor, required this.house, required this.image});

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      name: json['name'],
      actor: json['actor'],
      house: json['house'],
      image: json['image'],
    );
  }
}
