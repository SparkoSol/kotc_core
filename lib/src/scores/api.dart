part of kotc_core;

@RestApi(baseUrl: '')
abstract class ScoresApi {
  factory ScoresApi() => _ScoresApi(Api.client);

  @GET('/review-mode-scores')
  Future<List<ModeScores>> getReviewModeScores();

  @GET('/endless-mode-scores')
  Future<List<ModeScores>> getEndlessModeScores();

  @GET('/qbank-mode-scores')
  Future<List<ModeScores>> getQBankModeScores();

  @GET('/timed-mode-scores')
  Future<List<ModeScores>> getTimedModeScores();

  @POST('/review-mode-scores')
  Future<SimpleResponse> addReviewModeScores(@Body() ModeScores score);

  @POST('/endless-mode-scores')
  Future<SimpleResponse> addEndlessModeScores(@Body() ModeScores score);

  @POST('/qbank-mode-scores')
  Future<SimpleResponse> addQBankModeScores(@Body() ModeScores score);

  @POST('/timed-mode-scores')
  Future<SimpleResponse> addTimedModeScores(@Body() ModeScores score);

  @GET('/questions/stats/user/{user}')
  Future<List<UserStats>> getUserStats(@Path('user') String userId);

  @GET('/timed-mode-scores/high-score/{user}')
  Future<int> getTimedModeHighScore(@Path('user') String userId);

  @GET('/qbank-mode-scores/high-score/{user}')
  Future<int> getQBankModeHighScore(@Path('user') String userId);

  @GET('/endless-mode-scores/high-score/{user}')
  Future<int> getEndlessModeHighScore(@Path('user') String userId);

  @GET('/review-mode-scores/high-score/{user}')
  Future<int> getReviewModeHighScore(@Path('user') String userId);
}
