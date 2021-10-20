part of kotc_core;

@JsonSerializable(includeIfNull: false)
class SubCategory {
  final String id;
  final String name;

  SubCategory({required this.id, required this.name});

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);

  factory SubCategory.fromJson(json) => _$SubCategoryFromJson(json);
}
