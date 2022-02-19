part of kotc_core;

@JsonSerializable(createToJson: false)
class FlashCardResponse {
  final String? id;
  final DeckModel deck;
  @JsonKey(name: 'front_image')
  final String frontImage;
  @JsonKey(name: 'back_image')
  final String backImage;
  final String name;
  final int? difficulty;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'from_admin')
  final bool fromAdmin;
  final DateTime? createdAt;
  @JsonKey(name: 'is_first')
  final bool isFirst;
  final FlashCardButtonResponse again;
  final FlashCardButtonResponse hard;
  final FlashCardButtonResponse good;
  final FlashCardButtonResponse easy;

  FlashCardResponse({
    this.id,
    required this.name,
    this.createdAt,
    required this.backImage,
    required this.frontImage,
    required this.deck,
    this.difficulty,
    this.userId,
    required this.fromAdmin,
    required this.isFirst,
    required this.again,
    required this.easy,
    required this.good,
    required this.hard,
  });

  factory FlashCardResponse.fromJson(json) => _$FlashCardResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class FlashCardButtonResponse {
  int value;
  final String unit;

  FlashCardButtonResponse({
    required this.value,
    required this.unit,
  });

  factory FlashCardButtonResponse.fromJson(json) =>
      _$FlashCardButtonResponseFromJson(json);
}
