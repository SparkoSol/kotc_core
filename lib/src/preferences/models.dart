part of kotc_core;

@JsonSerializable(includeIfNull: false)
class PreferencesModel {
  final String? id;
  final List<String> categories;
  final List<String> subcategories;
  @JsonKey(name: 'type')
  final int preferenceType;
  @JsonKey(name: 'user_id')
  final String user;
  @JsonKey(name: 'show_bool_questions')
  bool? showBoolQuestions;
  @JsonKey(name: 'show_choices_questions')
  bool? showChoicesQuestions;
  @JsonKey(name: 'show_easy_questions')
  bool? showEasyQuestions;
  @JsonKey(name: 'show_medium_questions')
  bool? showMediumQuestions;
  @JsonKey(name: 'show_hard_questions')
  bool? showHardQuestions;
  @JsonKey(name: 'tutor_mode')
  bool? tutorMode;
  @JsonKey(name: 'is_endless')
  bool? isEndless;

  PreferencesModel({
    this.id,
    required this.categories,
    required this.subcategories,
    required this.preferenceType,
    required this.user,
    this.showBoolQuestions,
    this.showChoicesQuestions,
    this.showEasyQuestions,
    this.showHardQuestions,
    this.showMediumQuestions,
    this.tutorMode,
    this.isEndless,
  });

  Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);

  factory PreferencesModel.fromJson(json) => _$PreferencesModelFromJson(json);
}
