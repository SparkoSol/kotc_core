part of kotc_core;

@RestApi(baseUrl: '')
abstract class SurveyApi {
  factory SurveyApi() => _SurveyApi(Api.client);

  @POST('/surveys')
  Future addSurveys(@Body() SurveyRequest request);

  @POST('/surveys/exam')
  Future addExamSurvey(@Body() ExamSurveyRequest request);
}
