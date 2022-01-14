part of kotc_core;

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FlashCardModel {
  final String? id;
  final DeckModel deck;
  @JsonKey(name: 'front_image')
  final String frontImage;
  @JsonKey(name: 'back_image')
  final String backImage;
  final String name;
  final int difficulty;
  @JsonKey(name: 'user_id')
  final String userId;
  final DateTime createdAt;

  FlashCardModel({
    this.id,
    required this.name,
    required this.createdAt,
    required this.backImage,
    required this.frontImage,
    required this.deck,
    required this.difficulty,
    required this.userId,
  });

  factory FlashCardModel.fromJson(json) => _$FlashCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlashCardModelToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeckModel {
  final String? id;
  final String name;
  @JsonKey(name: 'user_id')
  final String userId;
  final DateTime createdAt;

  DeckModel({
    this.id,
    required this.name,
    required this.createdAt,
    required this.userId,
  });

  factory DeckModel.fromJson(json) => _$DeckModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeckModelToJson(this);
}
