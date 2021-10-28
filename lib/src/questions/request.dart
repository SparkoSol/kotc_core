part of kotc_core;

const Map<String, String> questionsType = {
  'endless_mode': 'v2_endless_mode_preferences',
  'review_mode': 'v2_review_mode_preferences',
  'timed_mode': 'v2_timed_mode_preferences',
  'qBank_mode': 'v2_qbank_preferences',
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
