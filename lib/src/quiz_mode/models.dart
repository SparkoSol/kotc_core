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
  @JsonKey(name: 'is_tutor')
  bool tutor;
  int duration;
  @JsonKey(name: 'subcategories')
  List<SubCategory> selectedCategories;
  @JsonKey(name: 'question_count')
  int? questionCount;
  final String? createdAt;

  QuizGameModeModel({
    this.id,
    required this.timed,
    required this.name,
    required this.user,
    required this.questionTypes,
    required this.tutor,
    required this.duration,
    required this.selectedCategories,
    this.questionCount,
    this.createdAt,
  });

  Map<String, dynamic> toJson() => _$QuizGameModeModelToJson(this);

  factory QuizGameModeModel.fromJson(json) => _$QuizGameModeModelFromJson(json);
}
