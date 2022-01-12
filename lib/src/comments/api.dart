part of kotc_core;

@RestApi(baseUrl: '')
abstract class CommentsApi {
  factory CommentsApi() => _CommentsApi(Api.client);

  @GET('/question-comments/all/{id}')
  Future<List<QuestionComment>> getComments(@Path('id') String questionId);

  @GET('/question-comments/user/{id}')
  Future<List<QuestionComment>> getUserAllComments(
    @Path('id') String userId,
  );

  @POST('/question-comments')
  Future addComment(@Body() QuestionComment comment);

  @DELETE('/question-comments/{id}')
  Future deleteComment(@Path('id') String commentId);
}
