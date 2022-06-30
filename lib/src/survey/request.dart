part of kotc_core;

@JsonSerializable(includeIfNull: false, createFactory: false)
class SurveyRequest {
  SurveyRequest({
    required this.reason,
    required this.email,
    required this.userId,
  });

  final String reason;
  final String email;
  @JsonKey(name: 'user_id')
  final String userId;

  Map<String, dynamic> toJson() => _$SurveyRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class ExamSurveyRequest {
  ExamSurveyRequest({
    required this.email,
    required this.userId,
    required this.questions,
  });

  String email;
  @JsonKey(name: 'user_id')
  String userId;
  List<ExamSurveyQuestionRequest> questions;

  Map<String, dynamic> toJson() => _$ExamSurveyRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class ExamSurveyQuestionRequest {
  ExamSurveyQuestionRequest({
    required this.answer,
    required this.question,
  });

  String question;
  String answer;

  Map<String, dynamic> toJson() => _$ExamSurveyQuestionRequestToJson(this);

  @override
  bool operator ==(Object other) {
    if (other is ExamSurveyQuestionRequest) {
      other.question == question;
    }
    return false;
  }

  @override
  int get hashCode => question.hashCode;
}
