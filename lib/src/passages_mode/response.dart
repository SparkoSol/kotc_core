part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class PassageQuestionResponse {
  final String id;
  final List<QuestionModel> questions;
  final String heading;
  final String passage;
  final List<String>? images;
  final String createdAt;

  PassageQuestionResponse({
    required this.id,
    required this.heading,
    required this.createdAt,
    required this.questions,
    required this.passage,
    this.images,
  });

  factory PassageQuestionResponse.fromJson(json) =>
      _$PassageQuestionResponseFromJson(json);
}
