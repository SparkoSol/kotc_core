library kotc_core;

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:math' as math;
import 'package:retrofit/retrofit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'src/questions/response.dart';

part 'src/questions/api.dart';

part 'src/questions/models.dart';

part 'src/questions/request.dart';

part 'src/categories/api.dart';

part 'src/categories/response.dart';

part 'src/scores/api.dart';

part 'src/scores/models.dart';

part 'src/common/response.dart';

part 'src/scores/response.dart';

part 'src/logs/api.dart';

part 'src/logs/requests.dart';

part 'src/stats/api.dart';

part 'src/stats/responses.dart';

part 'src/stats/models.dart';

part 'src/institutions/api.dart';

part 'src/institutions/models.dart';

part 'src/institutions/responses.dart';

part 'src/quiz_mode/api.dart';

part 'src/quiz_mode/models.dart';

part 'src/quiz_mode/responses.dart';

part 'src/pretty_dio_logger.dart';

part 'kotc_core.g.dart';

class Api {
  static final client = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
      // baseUrl: 'http://192.168.100.205:5000',
      baseUrl: 'https://api.kingofthecurve.org/v2',
      connectTimeout: 50000,
      receiveTimeout: 50000,
    ),
  );
}
