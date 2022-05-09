// part of kotc_core;
//
// @JsonSerializable(includeIfNull: false, createToJson: false)
// class QuestionOfTheDay {
//   final String id;
//   final String createdAt;
//   final String updatedAt;
//   final List<QuestionModel> questions;
//
//   QuestionOfTheDay({
//     required this.id,
//     required this.updatedAt,
//     required this.createdAt,
//     required this.questions,
//   });
//
//   factory QuestionOfTheDay.fromJson(json) => _$QuestionOfTheDayFromJson(json);
// }
//
// @JsonSerializable(includeIfNull: false, createToJson: false)
// class BookMarkResponse {
//   final String id;
//   final List<String> questions;
//   final String user;
//
//   BookMarkResponse({
//     required this.id,
//     required this.user,
//     required this.questions,
//   });
//
//   factory BookMarkResponse.fromJson(json) => _$BookMarkResponseFromJson(json);
// }
//
// @JsonSerializable(includeIfNull: false, createToJson: false)
// @HiveType(typeId: 4)
// class CategoryWithCountResponse extends HiveObject {
//   CategoryWithCountResponse({
//     required this.name,
//     required this.count,
//     required this.subcategories,
//   });
//
//   @HiveField(0)
//   final String name;
//   @HiveField(1)
//   final int count;
//   @HiveField(2)
//   final List<SubCategoryCountResponse> subcategories;
//
//   factory CategoryWithCountResponse.fromJson(json) =>
//       _$CategoryWithCountResponseFromJson(json);
// }
//
// @JsonSerializable(includeIfNull: false, createToJson: false)
// @HiveType(typeId: 5)
// class SubCategoryCountResponse extends HiveObject {
//   SubCategoryCountResponse({
//     required this.name,
//     required this.count,
//   });
//
//   @HiveField(0)
//   final String name;
//   @HiveField(1)
//   final int count;
//
//   factory SubCategoryCountResponse.fromJson(json) =>
//       _$SubCategoryCountResponseFromJson(json);
// }
