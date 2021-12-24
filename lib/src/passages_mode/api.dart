part of kotc_core;

@RestApi(baseUrl: '')
abstract class PassagesModeApi {
  factory PassagesModeApi() => _PassagesModeApi(Api.client);

  @GET('/passage-questions/game')
  Future<List<PassageQuestionResponse>> getPassageGame();
}
