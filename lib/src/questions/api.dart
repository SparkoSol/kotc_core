part of kotc_core;

@RestApi(baseUrl: '')
abstract class QuestionsApi {
  factory QuestionsApi() => _QuestionsApi(Api.client);

  @GET('/questions/mode/{mode}/user/{user}')
  Future<List<QuestionModel>> getQuestions(
    @Path('mode') String mode,
    @Path('user') String user,
  );

  @GET('/questions/subcategory')
  Future<List<QuestionModel>> getQuestionFromSub(
    @Query('sort') bool sort,
    // false
    @Query('subcategory') String subCategory, // false
    @Query('question-type') String questionType, // false
  );

  @GET('/questions/{id}')
  Future<QuestionModel> getOneQuestion(@Path('id') String questionId);

  @PATCH('/questions')
  Future updateOneQuestion(@Body() QuestionModel question);

  @PATCH('/questions/add-comment/{id}')
  Future addQuestionComment(
      @Path('id') String questionId, @Body() QuestionComment request);

  @POST('/question-bookmarks/toggle-bookmark')
  Future<dynamic> toggleBookMark(@Body() ToggleRequest toggleRequest);

  @GET('/question-bookmarks/user/{id}')
  Future<BookMarkResponse> fetchBookMarks(@Path('id') String userId);

  @GET('/question-bookmarks/count/user/{id}')
  Future<int> fetchBookMarksLength(@Path('id') String userId);

  @GET('/question-of-the-day')
  Future<QuestionOfTheDay> getQuestionsOfTheDay();

  @GET('/questions/category/{id}')
  Future<QuestionModel> getMultiplayerQuestion(@Path('id') String categoryId);

  @POST('/question-of-the-day/list')
  Future<List<QuestionModel>> getQuestionsFromList(
      @Body() QuestionsRequest request);

  @POST('/contributed-questions')
  Future addContributeQuestion(@Body() ContributeQuestionsRequest request);

  @POST('/flagged-questions')
  Future addFlaggedQuestion(@Body() FlaggedQuestionRequest request);

  @GET('/flagged-questions/confirm-contribution/{id}')
  Future<bool> getIsFlaggedAccepted(@Path('id') String userId);

  @GET('/questions/subcategory/count')
  Future<List<CategoryWithCountResponse>> getQuestionCountFromCategory();
}
