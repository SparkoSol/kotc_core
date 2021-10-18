part of kotc_core;

@RestApi(baseUrl: '')
abstract class QuestionsApi {
  factory QuestionsApi() => _QuestionsApi(Api.client);

  @GET('/questions/mode/:mode/user/:user')
  Future<List<QuestionResponse>> getQuestions(
      @Path('mode') String mode, @Path('user') String user);
}
