part of kotc_core;

@JsonSerializable(includeIfNull: false)
class QuestionComment {
  final String? id;
  @JsonKey(name: 'question_id')
  final String questionId;
  final QuestionModel? question;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'username')
  final String userName;
  final List<QuestionCommentReply>? reply;
  final String comment;
  final String? createdAt;

  QuestionComment({
    this.id,
    this.createdAt,
    this.reply,
    this.question,
    required this.userId,
    required this.userName,
    required this.comment,
    required this.questionId,
  });

  Map<String, dynamic> toJson() => _$QuestionCommentToJson(this);

  factory QuestionComment.fromJson(json) => _$QuestionCommentFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class QuestionCommentReply {
  final String? id;
  final String comment;
  final String? createdAt;

  QuestionCommentReply({
    this.id,
    this.createdAt,
    required this.comment,
  });

  Map<String, dynamic> toJson() => _$QuestionCommentReplyToJson(this);

  factory QuestionCommentReply.fromJson(json) =>
      _$QuestionCommentReplyFromJson(json);
}
