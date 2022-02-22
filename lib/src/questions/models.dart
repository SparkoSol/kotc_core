part of kotc_core;

@JsonSerializable(includeIfNull: false)
class QuestionModel {
  final String id;
  final int answer;
  final String type;
  final String statement;
  final List<String>? options;
  final SubCategory category;
  final SubCategory subCategory;
  final String explanation;
  final List<String> images;
  final List<String> videos;
  final List<String> pdfs;
  final String? createdAt;
  final String? updatedAt;
  final List<double>? percentage;

  QuestionModel({
    required this.category,
    required this.id,
    required this.answer,
    this.createdAt,
    required this.explanation,
    required this.images,
    this.options,
    required this.pdfs,
    required this.statement,
    required this.subCategory,
    required this.type,
    this.updatedAt,
    required this.videos,
    this.percentage,
  });

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);

  factory QuestionModel.fromJson(json) => _$QuestionModelFromJson(json);

  @override
  bool operator ==(Object other) {
    if (other is QuestionModel) {
      return other.id == id;
    }

    return false;
  }

  @override
  int get hashCode => id.hashCode;
}

@JsonSerializable(includeIfNull: false)
class SubCategory {
  final String id;
  final String? name;

  SubCategory({required this.id, required this.name});

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);

  factory SubCategory.fromJson(json) => _$SubCategoryFromJson(json);

  @override
  bool operator ==(Object other) {
    if (other is SubCategory) {
      return other.id == id;
    }

    return false;
  }

  @override
  int get hashCode => id.hashCode;
}
