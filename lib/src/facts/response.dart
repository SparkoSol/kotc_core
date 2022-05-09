// part of kotc_core;
//
// @JsonSerializable(createToJson: false)
// @HiveType(typeId: 20)
// class FactsResponse extends HiveObject {
//   FactsResponse({
//     required this.id,
//     required this.createdAt,
//     required this.active,
//     required this.fact,
//   });
//
//   @HiveField(0)
//   String id;
//   @HiveField(1)
//   String fact;
//   @HiveField(2)
//   bool active;
//   @HiveField(3)
//   String createdAt;
//
//   factory FactsResponse.fromJson(json) => _$FactsResponseFromJson(json);
// }
