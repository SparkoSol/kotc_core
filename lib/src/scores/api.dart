part of kotc_core;

@RestApi(baseUrl: '')
abstract class ScoresApi {
  factory ScoresApi() => _ScoresApi(Api.client);

  @POST('/scores')
  Future<SimpleResponse> addGameModeScores(@Body() ModeScores score);

  @GET('/questions/stats/user/{user}')
  Future<List<UserStats>> getUserStats(@Path('user') String userId);

  @GET('/scores/high-score/{user}/{type}')
  Future<int> getHighScore(@Path('user') String userId, @Path('type') int type);

  @GET('/scores/history/{user}/{mode}/{last}/{page}')
  Future<List<PreviousGame>> getPreviousGame(
    @Path('user') String userId,
    @Path('mode') int mode,
    @Path('page') int page,
    @Path('last') String? last,
  );
}
