part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class QuestionOfTheDay {
  final String id;
  final String createdAt;
  final String updatedAt;
  final List<QuestionModel> questions;

  QuestionOfTheDay({
    required this.id,
    required this.updatedAt,
    required this.createdAt,
    required this.questions,
  });

  factory QuestionOfTheDay.fromJson(json) => _$QuestionOfTheDayFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class BookMarkResponse {
  final String id;
  final List<String> questions;
  final String user;

  BookMarkResponse({
    required this.id,
    required this.user,
    required this.questions,
  });

  factory BookMarkResponse.fromJson(json) => _$BookMarkResponseFromJson(json);
}
