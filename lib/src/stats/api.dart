part of kotc_core;

@RestApi(baseUrl: '')
abstract class UserStatsApi {
  factory UserStatsApi() => _UserStatsApi(Api.client);

  @GET('/user-stats/{user}')
  Future<UserOverallStats> getUserOverallStat(@Path('user') String userId);

  @POST('/user-stats')
  Future addUserStat(@Body() UserOverallStats userStat);

  @PATCH('/user-stats')
  Future updateUserStat(@Body() UserOverallStats userStat);

  @GET('/user-stats/leaderboard/{mode}')
  Future<List<LeaderBoardStat>> getLeaderBoard(@Path('mode') int mode);

  @GET('/user-stats/leaderboard-new/{mode}/{user}')
  Future<NewLeaderBoardStat> getNewLeaderBoard(
    @Path('mode') int mode,
    @Path('user') String userId,
  );

  @GET('/user-stats/institutional-leaderboard/{mode}')
  Future<List<InstitutionalLeaderBoardStat>> getInstitutionalLeaderBoard(
      @Path('mode') int mode);

  @GET('/user-stats/top-hundred/{mode}/{user}')
  Future<bool> isInTopHundred(
    @Path('mode') int mode,
    @Path('user') String userId,
  );

  @GET('/user-stats/user-dashboard')
  Future<MultiplayerWinsLostResponse> getStatWinLost(
    @Query('user') String userId,
    @Query('mode') int mode, [
    @Query('from') String? from,
    @Query('to') String? to,
  ]);

  @GET('/user-stats/user-dashboard')
  Future<CorrectIncorrectResponse> getStatCorrectIncorrect(
    @Query('user') String userId,
    @Query('mode') int mode, [
    @Query('from') String? from,
    @Query('to') String? to,
  ]);

  @GET('/user-stats/user-dashboard')
  Future<GamesGraphResponse> getWeeklyGamesGraph(
    @Query('user') String userId,
    @Query('mode') int mode, [
    @Query('from') String? from,
    @Query('to') String? to,
  ]);

  @GET('/user-stats/user-dashboard')
  Future<ModeGamesGraphResponse> getGameModesGraph(
    @Query('user') String userId,
    @Query('mode') int mode, [
    @Query('from') String? from,
    @Query('to') String? to,
  ]);

  @GET('/user-stats/lifetime-user-dashboard-stats')
  Future<MultiplayerWinsLostResponse> getStatWinLostAll(
    @Query('user') String userId,
    @Query('mode') int mode,
  );

  @GET('/user-stats/lifetime-user-dashboard-stats')
  Future<CorrectIncorrectResponse> getStatCorrectIncorrectAll(
    @Query('user') String userId,
    @Query('mode') int mode,
  );

  @GET('/user-stats/lifetime-user-dashboard-stats')
  Future<GamesGraphResponse> getWeeklyGamesGraphAll(
    @Query('user') String userId,
    @Query('mode') int mode,
  );

  @GET('/user-stats/lifetime-user-dashboard-stats')
  Future<ModeGamesGraphResponse> getGameModesGraphAll(
    @Query('user') String userId,
    @Query('mode') int mode,
  );

  @POST('/user-stats/user-dashboard-stats')
  Future<MultiplayerWinsLostResponse> getStatWinLostCat(
    @Body() UserStatRequest request,
  );

  @POST('/user-stats/user-dashboard-stats')
  Future<CorrectIncorrectResponse> getStatCorrectIncorrectCat(
    @Body() UserStatRequest request,
  );

  @POST('/user-stats/user-dashboard-stats')
  Future<GamesGraphResponse> getWeeklyGamesGraphCat(
    @Body() UserStatRequest request,
  );

  @POST('/user-stats/user-dashboard-stats')
  Future<ModeGamesGraphResponse> getGameModesGraphCat(
    @Body() UserStatRequest request,
  );

  @GET('/user-stats/search')
  Future<List<SearchUserResponse>> searchUsersByName(
    @Query('query') String name,
  );
}
