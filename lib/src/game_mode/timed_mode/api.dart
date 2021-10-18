part of kotc_core;

@RestApi(baseUrl: '')
abstract class TimedModeApi {
  factory TimedModeApi() => _TimedModeApi(Api.client);
}
