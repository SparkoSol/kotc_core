part of kotc_core;

/// Used in app for game modes
enum GameModeType {
  endlessMode,
  timedMode,
  reviewMode,
  qBankMode,
  booleanBlitzMode,
  qotdMode,
  multiplayerMode,
  quizGameMode,
  passageMode,
}

/// To fetch questions
const Map<GameModeType, String> questionsType = {
  GameModeType.endlessMode: 'v2_endless_mode_preferences',
  GameModeType.reviewMode: 'v2_review_mode_preferences',
  GameModeType.timedMode: 'v2_timed_mode_preferences',
  GameModeType.qBankMode: 'v2_qbank_preferences',
  GameModeType.booleanBlitzMode: 'v2_boolean_blitz_preferences',
};

@JsonSerializable(includeIfNull: false, createFactory: false)
class QuestionsRequest {
  final List<String> questions;

  QuestionsRequest({required this.questions});

  Map<String, dynamic> toJson() => _$QuestionsRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class ToggleRequest {
  final String user;
  final String question;

  ToggleRequest({required this.user, required this.question});

  Map<String, dynamic> toJson() => _$ToggleRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class ContributeQuestionsRequest {
  final int status;
  final int answer;
  final String type;
  final String statement;
  final String user;
  final String email;
  final List<String> options;
  final SubCategory category;
  final SubCategory subCategory;
  final String explanation;

  ContributeQuestionsRequest({
    this.status = 0,
    required this.category,
    required this.answer,
    required this.explanation,
    required this.options,
    required this.statement,
    required this.subCategory,
    required this.type,
    required this.user,
    required this.email,
  });

  Map<String, dynamic> toJson() => _$ContributeQuestionsRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class FlaggedQuestionRequest {
  @JsonKey(name: 'question_id')
  final String questionId;
  final String reason;
  @JsonKey(name: 'user')
  final String userId;
  @JsonKey(name: 'user_data')
  final FlaggedUserData userData;

  FlaggedQuestionRequest({
    required this.reason,
    required this.questionId,
    required this.userId,
    required this.userData,
  });

  Map<String, dynamic> toJson() => _$FlaggedQuestionRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class FlaggedUserData {
  FlaggedUserData({
    required this.name,
    required this.email,
  });

  final String name;
  final String email;

  Map<String, dynamic> toJson() => _$FlaggedUserDataToJson(this);
}
