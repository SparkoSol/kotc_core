part of kotc_core;

@JsonSerializable(includeIfNull: false, explicitToJson: false)
class UserStats {
  String category;
  String categoryId;
  double overallPercentage;
  Map<String, double> subcategories;

  UserStats({
    required this.categoryId,
    required this.category,
    required this.overallPercentage,
    required this.subcategories,
  });

  factory UserStats.fromJson(json) => _$UserStatsFromJson(json);
}
