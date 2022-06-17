part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class QuestionsUsageStat {
  final int all;
  @JsonKey(name: 'unused')
  final int unUsed;
  final int incorrect;
  final int marked;
  @JsonKey(name: 'categories_with_count')
  final List<CategoriesWithCount> categories;

  QuestionsUsageStat({
    required this.all,
    required this.incorrect,
    required this.marked,
    required this.unUsed,
    required this.categories,
  });

  factory QuestionsUsageStat.fromJson(json) =>
      _$QuestionsUsageStatFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class CategoriesWithCount {
  final SubCategory category;
  final int count;
  @JsonKey(name: 'subcategory_with_count')
  final List<SubCategoriesWithCount> subCategories;

  CategoriesWithCount({
    required this.category,
    required this.count,
    required this.subCategories,
  });

  factory CategoriesWithCount.fromJson(json) =>
      _$CategoriesWithCountFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class SubCategoriesWithCount {
  final SubCategory subcategory;
  final int count;

  SubCategoriesWithCount({required this.subcategory, required this.count});

  factory SubCategoriesWithCount.fromJson(json) =>
      _$SubCategoriesWithCountFromJson(json);
}
