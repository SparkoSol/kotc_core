part of kotc_core;

@RestApi(baseUrl: '')
abstract class PassagesModeApi {
  factory PassagesModeApi() => _PassagesModeApi(Api.client);

  @GET('/passages/game')
  Future<List<PassageQuestionResponse>> getPassageGames();
}
