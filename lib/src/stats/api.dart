part of kotc_core;

@RestApi(baseUrl: '')
abstract class UserStatsApi {
  factory UserStatsApi() => _UserStatsApi(Api.client);

  @GET('/user-stats/{user}')
  Future<UserOverallStats> getUserOverallStat(@Path('user') String userId);

  @PATCH('/user-stats')
  Future updateUserStat(@Body() UserOverallStats userStat);

  @GET('/user-stats/leaderboard/{mode}')
  Future<List<LeaderBoardStat>> getLeaderBoard(@Path('mode') int mode);

  @GET('/user-stats/top-hundred/{mode}/{user}')
  Future<bool> isInTopHundred(
      @Path('mode') int mode, @Path('user') String userId);
}
