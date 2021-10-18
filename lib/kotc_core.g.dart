// GENERATED CODE - DO NOT MODIFY BY HAND

part of kotc_core;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TimedModeApi implements TimedModeApi {
  _TimedModeApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
