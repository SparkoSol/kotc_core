part of kotc_core;

@JsonSerializable(includeIfNull: false)
class UserOverallStats {
  final String id;
  final String user;
  String name;
  int total;
  int right;
  int wrong;
  int win;
  int lost;
  @JsonKey(name: 'match_count')
  int matchCount;
  int point;
  int streak;
  int crown;
  @JsonKey(name: 'qbank_high_score')
  int qBankHighScore;
  @JsonKey(name: 'timed_high_score')
  int timedHighScore;
  @JsonKey(name: 'review_high_score')
  int reviewHighScore;
  @JsonKey(name: 'endless_high_score')
  int endlessHighScore;
  @JsonKey(name: 'bool_blitz_high_score')
  int boolHighScore;

  UserOverallStats({
    required this.id,
    required this.user,
    required this.name,
    required this.right,
    required this.crown,
    required this.endlessHighScore,
    required this.lost,
    required this.matchCount,
    required this.point,
    required this.qBankHighScore,
    required this.reviewHighScore,
    required this.streak,
    required this.timedHighScore,
    required this.total,
    required this.win,
    required this.wrong,
    required this.boolHighScore,
  });

  factory UserOverallStats.fromJson(json) => _$UserOverallStatsFromJson(json);

  Map<String, dynamic> toJson() => _$UserOverallStatsToJson(this);
}
