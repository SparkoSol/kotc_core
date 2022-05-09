// part of kotc_core;
//
// @JsonSerializable(includeIfNull: false, explicitToJson: true)
// class ModeScores {
//   final String? id;
//   @JsonKey(name: 'user_id')
//   final String userId;
//   int score;
//   final List<ModeAnswers> answers;
//   int type;
//
//   ModeScores({
//     this.id,
//     required this.score,
//     required this.userId,
//     required this.answers,
//     required this.type,
//   });
//
//   Map<String, dynamic> toJson() => _$ModeScoresToJson(this);
//
//   factory ModeScores.fromJson(json) => _$ModeScoresFromJson(json);
// }
//
// @JsonSerializable(includeIfNull: false)
// class ModeAnswers {
//   final int answer;
//   @JsonKey(name: 'category_id')
//   final String categoryId;
//   @JsonKey(name: 'is_correct')
//   final bool isCorrect;
//   @JsonKey(name: 'question_id')
//   final String questionId;
//   @JsonKey(name: 'subcategory_id')
//   final String subcategoryId;
//
//   ModeAnswers({
//     required this.answer,
//     required this.isCorrect,
//     required this.categoryId,
//     required this.questionId,
//     required this.subcategoryId,
//   });
//
//   Map<String, dynamic> toJson() => _$ModeAnswersToJson(this);
//
//   factory ModeAnswers.fromJson(json) => _$ModeAnswersFromJson(json);
// }
