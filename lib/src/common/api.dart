part of kotc_core;

@RestApi(baseUrl: '')
abstract class CommonApi {
  factory CommonApi() => _CommonApi(Api.client);

  @GET('/app-status')
  Future<AppStatusResponse> getAppStatus();

  @GET('/notifications/email?event={event}&email={email}')
  Future sendEmail(
    @Path('event') String event,
    @Path('email') String email,
  );

  @GET('/offers/random')
  Future<PopupResponse> getRandomOffers();

  @POST('/reviews')
  Future submitReview(@Body() ReviewRequest review);

  @GET('/subscription-offer/{productId}/{offerId}')
  Future<RedeemCodeResponse> getRedeemCode(
    @Path('productId') String productId,
    @Path('offerId') String offerId,
  );

  @POST('/account-deletion-requests')
  Future requestAccountDeletion(@Body() AccountDeletionRequest request);

  @PUT('/uploads')
  Future<SimpleResponse> uploadImage(@Part() File file);
}
