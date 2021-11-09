part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class UserStats {
  String category;
  String categoryId;
  double overallPercentage;
  Map<String, double>? subcategories;

  UserStats({
    required this.categoryId,
    required this.category,
    required this.overallPercentage,
    required this.subcategories,
  });

  factory UserStats.fromJson(json) => _$UserStatsFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class PreviousGame {
  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  int score;
  final List<PreviousGameAnswer> answers;
  int type;
  final String createdAt;

  PreviousGame({
    required this.id,
    required this.type,
    required this.userId,
    required this.answers,
    required this.score,
    required this.createdAt,
  });

  factory PreviousGame.fromJson(json) => _$PreviousGameFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class PreviousGameAnswer {
  final int answer;
  @JsonKey(name: 'category_id')
  final String categoryId;
  @JsonKey(name: 'is_correct')
  final bool isCorrect;
  @JsonKey(name: 'question_id')
  final QuestionResponse questionId;
  @JsonKey(name: 'subcategory_id')
  final String subcategoryId;

  PreviousGameAnswer({
    required this.answer,
    required this.isCorrect,
    required this.categoryId,
    required this.questionId,
    required this.subcategoryId,
  });

  factory PreviousGameAnswer.fromJson(json) =>
      _$PreviousGameAnswerFromJson(json);
}
