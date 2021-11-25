part of kotc_core;

@RestApi(baseUrl: '')
abstract class QuizModeApi {
  factory QuizModeApi() => _QuizModeApi(Api.client);

  @GET('/quiz-games/question-usage/{user}')
  Future<QuestionsUsageStat> getQuestionUsageStat(@Path('user') String userId);

  @GET('/quiz-games/user/{user}')
  Future<List<QuizGameModeModel>> getUserQuizzes(@Path('user') String userId);

  @POST('/quiz-games')
  Future addUserQuiz(@Body() QuizGameModeModel quizModel);

  @PATCH('/quiz-games')
  Future updateUserQuiz(@Body() QuizGameModeModel quizModel);

  @DELETE('/quiz-games/{id}')
  Future deleteUserQuiz(@Path('id') String id);

  @GET('/quiz-games/questions/{id}')
  Future<List<QuestionResponse>> getQuizQuestions(@Path('id') String quizId);
}
