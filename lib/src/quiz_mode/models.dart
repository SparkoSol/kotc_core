part of kotc_core;

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class QuizGameModeModel {
  final String? id;
  final String user;
  String name;
  @JsonKey(name: 'question_type')
  int questionTypes;
  @JsonKey(name: 'is_timed')
  bool timed;

  QuizGameModeModel({
    this.id,
    required this.timed,
    required this.name,
    required this.user,
    required this.questionTypes,
  });

  Map<String, dynamic> toJson() => _$QuizGameModeModelToJson(this);

  factory QuizGameModeModel.fromJson(json) => _$QuizGameModeModelFromJson(json);
}
