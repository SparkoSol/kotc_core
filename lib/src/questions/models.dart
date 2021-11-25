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
  final String createdAt;
  final String updatedAt;
  final List<double>? percentage;
  List<QuestionComment>? comments;

  QuestionModel({
    required this.category,
    required this.id,
    required this.answer,
    required this.createdAt,
    required this.explanation,
    required this.images,
    this.options,
    required this.pdfs,
    required this.statement,
    required this.subCategory,
    required this.type,
    required this.updatedAt,
    required this.videos,
    this.percentage,
    required this.comments,
  });

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);

  factory QuestionModel.fromJson(json) => _$QuestionModelFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class SubCategory {
  final String id;
  final String name;

  SubCategory({required this.id, required this.name});

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);

  factory SubCategory.fromJson(json) => _$SubCategoryFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class QuestionComment {
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'username')
  final String userName;
  final String comment;
  final String? createdAt;

  QuestionComment({
    this.createdAt,
    required this.userId,
    required this.userName,
    required this.comment,
  });

  Map<String, dynamic> toJson() => _$QuestionCommentToJson(this);

  factory QuestionComment.fromJson(json) => _$QuestionCommentFromJson(json);
}
