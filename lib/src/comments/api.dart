part of kotc_core;

@RestApi(baseUrl: '')
abstract class CommentsApi {
  factory CommentsApi() => _CommentsApi(Api.client);

  @GET('/question-comments/all/{id}')
  Future<List<QuestionComment>> getComments(@Path('id') String questionId);

  @POST('/question-comments')
  Future addComment(@Body() QuestionComment comment);

  @DELETE('/question-comments/{id}')
  Future deleteComment(@Path('id') String commentId);
}
