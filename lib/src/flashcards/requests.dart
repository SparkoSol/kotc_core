part of kotc_core;

@JsonSerializable(explicitToJson: true, createFactory: false)
class FlashCardRequest {
  final String? id;
  final String deck;
  @JsonKey(name: 'front_images')
  final List<String> frontImage;
  @JsonKey(name: 'back_images')
  final List<String> backImage;
  final String name;
  final int difficulty;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'from_admin')
  final bool fromAdmin;
  final DateTime? createdAt;
  final bool? isTextField;
  final String? frontText;
  final String? backText;

  FlashCardRequest({
    this.id,
    required this.name,
    this.createdAt,
    required this.backImage,
    required this.frontImage,
    required this.deck,
    required this.difficulty,
    this.userId,
    this.fromAdmin = false,
    this.backText,
    this.frontText,
    this.isTextField,
  });

  Map<String, dynamic> toJson() => _$FlashCardRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, createFactory: false)
class DecksFlashCardRequest {
  DecksFlashCardRequest({required this.decks});

  final List<String> decks;

  Map<String, dynamic> toJson() => _$DecksFlashCardRequestToJson(this);
}
