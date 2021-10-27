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
}
