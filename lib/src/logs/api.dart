part of kotc_core;

@RestApi(baseUrl: '')
abstract class LogsApi {
  factory LogsApi() => _LogsApi(Api.client);

  @POST('/logs')
  Future createLog(@Body() LogRequest logRequest);
}
