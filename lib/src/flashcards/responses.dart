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
  final int difficulty;
  @JsonKey(name: 'user_id')
  final String userId;
  final DateTime? createdAt;

  FlashCardResponse({
    this.id,
    required this.name,
    this.createdAt,
    required this.backImage,
    required this.frontImage,
    required this.deck,
    required this.difficulty,
    required this.userId,
  });

  factory FlashCardResponse.fromJson(json) => _$FlashCardResponseFromJson(json);
}
