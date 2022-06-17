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
class NewLeaderBoardStat {
  final int position;
  final List<LeaderBoardStat> leaderboard;

  NewLeaderBoardStat({
    required this.position,
    required this.leaderboard,
  });

  factory NewLeaderBoardStat.fromJson(json) =>
      _$NewLeaderBoardStatFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class InstitutionalLeaderBoardStat {
  final int score;
  final int win;
  final int lost;
  final String name;
  @JsonKey(name: 'user-leaderboard')
  final List<LeaderBoardStat> usersLeaderboard;

  InstitutionalLeaderBoardStat({
    required this.name,
    required this.score,
    required this.usersLeaderboard,
    required this.win,
    required this.lost,
  });

  factory InstitutionalLeaderBoardStat.fromJson(json) =>
      _$InstitutionalLeaderBoardStatFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class MultiplayerWinsLostResponse {
  @JsonKey(name: 'multiplayer_games')
  final int multiplayerGames;
  final int games;
  final int win;
  final int lost;

  MultiplayerWinsLostResponse({
    required this.multiplayerGames,
    required this.games,
    required this.win,
    required this.lost,
  });

  factory MultiplayerWinsLostResponse.fromJson(json) =>
      _$MultiplayerWinsLostResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class CorrectIncorrectResponse {
  final int correct;
  final int incorrect;

  CorrectIncorrectResponse({
    required this.correct,
    required this.incorrect,
  });

  factory CorrectIncorrectResponse.fromJson(json) =>
      _$CorrectIncorrectResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class GamesGraphResponse {
  final int monday;
  final int tuesday;
  final int wednesday;
  final int thursday;
  final int friday;
  final int saturday;
  final int sunday;

  GamesGraphResponse({
    required this.friday,
    required this.monday,
    required this.saturday,
    required this.sunday,
    required this.thursday,
    required this.tuesday,
    required this.wednesday,
  });

  factory GamesGraphResponse.fromJson(json) =>
      _$GamesGraphResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class ModeGamesGraphResponse {
  final int endless;
  final int timed;
  final int reviewed;
  @JsonKey(name: 'qbank')
  final int qBank;
  @JsonKey(name: 'boolean_blitz')
  final int booleanBlitz;

  ModeGamesGraphResponse({
    required this.timed,
    required this.endless,
    required this.booleanBlitz,
    required this.reviewed,
    required this.qBank,
  });

  factory ModeGamesGraphResponse.fromJson(json) =>
      _$ModeGamesGraphResponseFromJson(json);
}
