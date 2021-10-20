part of kotc_core;

@RestApi(baseUrl: '')
abstract class CategoriesApi {
  factory CategoriesApi() => _CategoriesApi(Api.client);

  @GET('/categories')
  Future<List<Category>> getCategories();
}
