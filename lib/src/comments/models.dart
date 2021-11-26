part of kotc_core;

@JsonSerializable(includeIfNull: false)
class QuestionComment {
  final String? id;
  @JsonKey(name: 'question_id')
  final String questionId;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'username')
  final String userName;
  final String comment;
  final String? createdAt;

  QuestionComment({
    this.id,
    this.createdAt,
    required this.userId,
    required this.userName,
    required this.comment,
    required this.questionId,
  });

  Map<String, dynamic> toJson() => _$QuestionCommentToJson(this);

  factory QuestionComment.fromJson(json) => _$QuestionCommentFromJson(json);
}
