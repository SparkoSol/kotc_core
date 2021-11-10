part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class LeaderBoardStat {
  final String user;
  final String name;
  final int score;
  final int win;
  final int lost;

  LeaderBoardStat({
    required this.user,
    required this.score,
    required this.name,
    required this.win,
    required this.lost,
  });

  factory LeaderBoardStat.fromJson(json) => _$LeaderBoardStatFromJson(json);
}
