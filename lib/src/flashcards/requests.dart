part of kotc_core;

@JsonSerializable(explicitToJson: true, createFactory: false)
class FlashCardRequest {
  final String? id;
  final String deck;
  @JsonKey(name: 'front_image')
  final String frontImage;
  @JsonKey(name: 'back_image')
  final String backImage;
  final String name;
  final int difficulty;
  @JsonKey(name: 'user_id')
  final String userId;
  final DateTime? createdAt;

  FlashCardRequest({
    this.id,
    required this.name,
    this.createdAt,
    required this.backImage,
    required this.frontImage,
    required this.deck,
    required this.difficulty,
    required this.userId,
  });

  Map<String, dynamic> toJson() => _$FlashCardRequestToJson(this);
}
