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

@JsonSerializable(includeIfNull: false, createToJson: false)
class InstitutionalLeaderBoardStat {
  final int score;
  final String name;
  @JsonKey(name: 'user-leaderboard')
  final List<LeaderBoardStat> usersLeaderboard;

  InstitutionalLeaderBoardStat({
    required this.name,
    required this.score,
    required this.usersLeaderboard,
  });

  factory InstitutionalLeaderBoardStat.fromJson(json) =>
      _$InstitutionalLeaderBoardStatFromJson(json);
}
