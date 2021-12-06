part of kotc_core;

@JsonSerializable(includeIfNull: false)
class PreferencesModel {
  final String? id;
  final List<String> categories;
  final List<String> subcategories;
  final int preferenceType;
  final String user;
  final bool? showBoolQuestions;
  final bool? showChoicesQuestions;
  final bool? showEasyQuestions;
  final bool? showMediumQuestions;
  final bool? showHardQuestions;

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
  });

  Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);

  factory PreferencesModel.fromJson(json) => _$PreferencesModelFromJson(json);
}
