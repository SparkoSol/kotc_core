part of kotc_core;

@RestApi(baseUrl: '')
abstract class QuestionsApi {
  factory QuestionsApi() => _QuestionsApi(Api.client);

  @GET('/questions/mode/{mode}/user/{user}')
  Future<List<QuestionResponse>> getQuestions(
      @Path('mode') String mode, @Path('user') String user);

  @POST('/questions/toggle-bookmark')
  Future<dynamic> toggleBookMark(@Body() ToggleRequest toggleRequest);

  @GET('/question-of-the-day')
  Future<QuestionOfTheDay> getQuestionsOfTheDay();

  @GET('/questions/category/{id}')
  Future<QuestionResponse> getMultiplayerQuestion(
      @Path('id') String categoryId);

  @POST('/questions/list')
  Future<List<QuestionResponse>> getQuestionsFromList(
      @Body() QuestionsRequest request);
}
