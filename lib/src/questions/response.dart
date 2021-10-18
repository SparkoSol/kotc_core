part of kotc_core;

@JsonSerializable(
    includeIfNull: false, createToJson: false, explicitToJson: true)
class QuestionResponse {
  final String id;
  final int answer;
  final String type;
  final String statement;
  final List<String>? options;
  final Category category;
  final SubCategory subCategory;
  final String explanation;
  final List<String> images;
  final List<String> videos;
  final List<String> pdfs;
  final String createdAt;
  final String updatedAt;

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
  });

  factory QuestionResponse.fromJson(json) => _$QuestionResponseFromJson(json);
}
