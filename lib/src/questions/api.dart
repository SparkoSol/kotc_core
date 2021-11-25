part of kotc_core;

@RestApi(baseUrl: '')
abstract class QuestionsApi {
  factory QuestionsApi() => _QuestionsApi(Api.client);

  @GET('/questions/mode/{mode}/user/{user}')
  Future<List<QuestionResponse>> getQuestions(
      @Path('mode') String mode, @Path('user') String user);

  @POST('/question-bookmarks/toggle-bookmark')
  Future<dynamic> toggleBookMark(@Body() ToggleRequest toggleRequest);

  @GET('/question-bookmarks/user/{id}')
  Future<BookMarkResponse> fetchBookMarks(@Path('id') String userId);

  @GET('/question-bookmarks/count/user/{id}')
  Future<int> fetchBookMarksLength(@Path('id') String userId);

  @GET('/question-of-the-day')
  Future<QuestionOfTheDay> getQuestionsOfTheDay();

  @GET('/questions/category/{id}')
  Future<QuestionResponse> getMultiplayerQuestion(
      @Path('id') String categoryId);

  @POST('/question-of-the-day/list')
  Future<List<QuestionResponse>> getQuestionsFromList(
      @Body() QuestionsRequest request);

  @POST('/contributed-questions')
  Future addContributeQuestion(@Body() ContributeQuestionsRequest request);
}
