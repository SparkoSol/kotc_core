part of kotc_core;

@RestApi(baseUrl: '')
abstract class PreferencesApi {
  factory PreferencesApi() => _PreferencesApi(Api.client);

  @GET('/preferences/user/{user}/mode/{mode}')
  Future<PreferencesModel> getPreferences(
    @Path('user') String userId,
    @Path('mode') int mode,
  );

  @PATCH('/preferences')
  Future updatePreference(@Body() PreferencesModel model);

  @PATCH('/preferences/toggle-sub-category/{id}/subcategory/{subcategory}')
  Future toggleSubCategory(
    @Path('id') String id,
    @Path('subcategory') String subCategoryId,
  );
}
