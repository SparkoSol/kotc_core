part of kotc_core;

@RestApi(baseUrl: '')
abstract class InstitutionsApi {
  factory InstitutionsApi() => _InstitutionsApi(Api.client);

  @GET('/institute-confirmations/user/{userId}')
  Future<InstituteConfirmationResponse> instituteConfirmation(
      @Path('userId') String userId);

  @DELETE('/institute-confirmations/{id}')
  Future deleteConfirmation(@Path('id') String confirmationId);

  @GET('/institutions/{domain}')
  Future<InstituteModel> findInstitute(@Path('domain') String domain);

  @POST('/institutions/link-institute-email/{domain}/{id}')
  Future linkInstitute(
    @Path('domain') String domain,
    @Path('id') String userId,
  );

  @POST('/institutions')
  Future addInstitute(@Body() InstituteModel model);
}
