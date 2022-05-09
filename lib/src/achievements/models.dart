// part of kotc_core;
//
// @JsonSerializable(includeIfNull: false, explicitToJson: true)
// class StageSyncModel {
//   StageSyncModel({
//     required this.stages,
//     required this.userId,
//     required this.stats,
//     this.id,
//   });
//
//   String? id;
//   List<StagesModel> stages;
//   String userId;
//   List<AchievementsStatsModel> stats;
//
//   Map<String, dynamic> toJson() => _$StageSyncModelToJson(this);
//
//   factory StageSyncModel.fromJson(json) => _$StageSyncModelFromJson(json);
// }
//
// @HiveType(typeId: 1)
// enum Stages {
//   @JsonValue('Basic')
//   @HiveField(0)
//   basic,
//   @JsonValue('Intermediate')
//   @HiveField(1)
//   intermediate,
//   @JsonValue('Pro')
//   @HiveField(2)
//   pro,
// }
//
// @JsonSerializable(includeIfNull: false, explicitToJson: true)
// @HiveType(typeId: 2)
// class StagesModel extends HiveObject {
//   StagesModel({
//     required this.stage,
//     required this.achievements,
//     required this.isActive,
//   });
//
//   @HiveField(0)
//   Stages stage;
//   @HiveField(1)
//   List<AchievementModel> achievements;
//   @HiveField(2)
//   bool isActive;
//
//   Future<void> updateStatus() => save();
//
//   Map<String, dynamic> toJson() => _$StagesModelToJson(this);
//
//   factory StagesModel.fromJson(json) => _$StagesModelFromJson(json);
//
//   @override
//   bool operator ==(Object other) {
//     if (other is StagesModel) {
//       return other.stage == stage;
//     }
//
//     return false;
//   }
//
//   @override
//   int get hashCode => stage.hashCode;
// }
//
// @JsonSerializable(includeIfNull: false)
// @HiveType(typeId: 0)
// class AchievementModel extends HiveObject {
//   AchievementModel({
//     required this.id,
//     required this.name,
//     required this.status,
//     required this.description,
//     required this.progress,
//   });
//
//   @HiveField(0)
//   final String id;
//   @HiveField(1)
//   final String name;
//   @HiveField(2)
//   bool status;
//   @HiveField(3)
//   String description;
//   @HiveField(4)
//   double progress;
//
//   Map<String, dynamic> toJson() => _$AchievementModelToJson(this);
//
//   factory AchievementModel.fromJson(json) => _$AchievementModelFromJson(json);
//
//   @override
//   bool operator ==(Object other) {
//     if (other is AchievementModel) {
//       return other.id == id;
//     }
//
//     return false;
//   }
//
//   @override
//   int get hashCode => id.hashCode;
// }
//
// @JsonSerializable(includeIfNull: false)
// @HiveType(typeId: 3)
// class AchievementsStatsModel extends HiveObject {
//   AchievementsStatsModel({
//     required this.dateTime,
//     required this.category,
//     required this.questionId,
//     required this.isCorrect,
//     required this.subCategory,
//   });
//
//   @HiveField(0)
//   final String questionId;
//   @HiveField(1)
//   final bool isCorrect;
//   @HiveField(2)
//   final String category;
//   @HiveField(3)
//   final String subCategory;
//   @HiveField(4)
//   final String dateTime;
//
//   Map<String, dynamic> toJson() => _$AchievementsStatsModelToJson(this);
//
//   factory AchievementsStatsModel.fromJson(json) =>
//       _$AchievementsStatsModelFromJson(json);
// }
