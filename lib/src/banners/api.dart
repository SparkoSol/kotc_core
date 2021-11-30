part of kotc_core;

@RestApi(baseUrl: '')
abstract class BannersApi {
  factory BannersApi() => _BannersApi(Api.client);

  @GET('/banners/page/{page}/position/{placement}')
  Future<List<BannersResponse>> getBanners(
      @Path('page') int page, @Path('placement') int position);

  @GET('/banners/update-click-count/{bannerId}')
  Future logBannerClick(
      @Path('bannerId') String bannerId);
}
