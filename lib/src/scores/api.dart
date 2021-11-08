part of kotc_core;

@RestApi(baseUrl: '')
abstract class ScoresApi {
  factory ScoresApi() => _ScoresApi(Api.client);
  //
  // @GET('/review-mode-scores')
  // Future<List<ModeScores>> getReviewModeScores();
  //
  // @GET('/endless-mode-scores')
  // Future<List<ModeScores>> getEndlessModeScores();
  //
  // @GET('/qbank-mode-scores')
  // Future<List<ModeScores>> getQBankModeScores();
  //
  // @GET('/timed-mode-scores')
  // Future<List<ModeScores>> getTimedModeScores();

  @POST('/scores')
  Future<SimpleResponse> addGameModeScores(@Body() ModeScores score);

  @GET('/questions/stats/user/{user}')
  Future<List<UserStats>> getUserStats(@Path('user') String userId);

  @GET('/scores/high-score/{user}/{type}')
  Future<int> getHighScore(@Path('user') String userId, @Path('type') int type);

// @GET('/timed-mode-scores/high-score/{user}')
// Future<int> getTimedModeHighScore(@Path('user') String userId);
//
// @GET('/qbank-mode-scores/high-score/{user}')
// Future<int> getQBankModeHighScore(@Path('user') String userId);
//
// @GET('/endless-mode-scores/high-score/{user}')
// Future<int> getEndlessModeHighScore(@Path('user') String userId);
//
// @GET('/review-mode-scores/high-score/{user}')
// Future<int> getReviewModeHighScore(@Path('user') String userId);
}
