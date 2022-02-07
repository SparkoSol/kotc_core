part of kotc_core;

@RestApi(baseUrl: '')
abstract class BannersApi {
  factory BannersApi() => _BannersApi(Api.client);

  @Deprecated('this is deprecated, Use getBannersNew')
  @GET('/banners/page/{page}/position/{placement}')
  Future<List<BannersResponse>> getBanners(
    @Path('page') int page,
    @Path('placement') int position,
  );

  /// 0 for IOS
  /// 1 for Android

  @GET('/banners/page/{page}/position/{placement}/platform/{platform}')
  Future<List<BannersResponse>> getBannersNew(
    @Path('page') int page,
    @Path('placement') int position,
    @Path('platform') int platform,
  );

  @GET('/banners/update-click-count/{bannerId}')
  Future logBannerClick(@Path('bannerId') String bannerId);
}
