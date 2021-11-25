part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class QuestionsUsageStat {
  final int all;
  @JsonKey(name: 'unused')
  final int unUsed;
  final int incorrect;
  final int marked;

  QuestionsUsageStat({
    required this.all,
    required this.incorrect,
    required this.marked,
    required this.unUsed,
  });

  factory QuestionsUsageStat.fromJson(json) =>
      _$QuestionsUsageStatFromJson(json);
}
