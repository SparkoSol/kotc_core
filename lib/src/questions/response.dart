part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class QuestionResponse {
  final String id;
  final int answer;
  final String type;
  final String statement;
  final List<String>? options;
  final SubCategory category;
  final SubCategory subCategory;
  final String explanation;
  final List<String> images;
  final List<String> videos;
  final List<String> pdfs;
  final String createdAt;
  final String updatedAt;
  final List<double>? percentage;

  factory QuestionResponse.fromJson(json) => _$QuestionResponseFromJson(json);

  QuestionResponse({
    required this.category,
    required this.id,
    required this.answer,
    required this.createdAt,
    required this.explanation,
    required this.images,
    this.options,
    required this.pdfs,
    required this.statement,
    required this.subCategory,
    required this.type,
    required this.updatedAt,
    required this.videos,
    this.percentage,
  });
}

@JsonSerializable(
    includeIfNull: false, createToJson: false, explicitToJson: true)
class QuestionOfTheDay {
  final String id;
  final String createdAt;
  final String updatedAt;
  final List<QuestionResponse> questions;

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
