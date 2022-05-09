// part of kotc_core;
//
// @JsonSerializable(createToJson: false)
// class FlashCardResponse {
//   final String? id;
//   final DeckModel deck;
//   @JsonKey(name: 'front_images')
//   final List<String>? frontImage;
//   @JsonKey(name: 'back_images')
//   final List<String>? backImage;
//   final String name;
//   final int? difficulty;
//   @JsonKey(name: 'user_id')
//   final String? userId;
//   @JsonKey(name: 'from_admin')
//   final bool fromAdmin;
//   final DateTime? createdAt;
//   @JsonKey(name: 'is_first')
//   final bool isFirst;
//   final bool isTextField;
//   @JsonKey(name: "ISClosedDeletion")
//   final bool isCloseDeletion;
//   String frontText;
//   String backText;
//   final FlashCardButtonResponse again;
//   final FlashCardButtonResponse hard;
//   final FlashCardButtonResponse good;
//   final FlashCardButtonResponse easy;
//
//   FlashCardResponse({
//     this.id,
//     required this.name,
//     this.createdAt,
//     this.backImage,
//     this.frontImage,
//     required this.deck,
//     this.difficulty,
//     this.userId,
//     required this.fromAdmin,
//     required this.isFirst,
//     required this.again,
//     required this.easy,
//     required this.good,
//     required this.hard,
//     required this.backText,
//     required this.frontText,
//     required this.isCloseDeletion,
//     required this.isTextField,
//   });
//
//   FlashCardResponse.from(FlashCardResponse response)
//       : id = response.id,
//         name = response.name,
//         createdAt = response.createdAt,
//         backImage = response.backImage,
//         frontImage = response.frontImage,
//         deck = response.deck,
//         difficulty = response.difficulty,
//         userId = response.userId,
//         fromAdmin = response.fromAdmin,
//         isFirst = response.isFirst,
//         again = response.again,
//         easy = response.easy,
//         good = response.good,
//         hard = response.hard,
//         backText = response.backText,
//         frontText = response.frontText,
//         isCloseDeletion = response.isCloseDeletion,
//         isTextField = response.isTextField;
//
//   factory FlashCardResponse.fromJson(json) => _$FlashCardResponseFromJson(json);
// }
//
// @JsonSerializable(createToJson: false)
// class FlashCardButtonResponse {
//   int value;
//   final String unit;
//
//   FlashCardButtonResponse({
//     required this.value,
//     required this.unit,
//   });
//
//   factory FlashCardButtonResponse.fromJson(json) =>
//       _$FlashCardButtonResponseFromJson(json);
// }
