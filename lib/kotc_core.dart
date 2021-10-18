library kotc_core;

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'src/questions/response.dart';

part 'src/questions/api.dart';

part 'src/questions/models.dart';

part 'kotc_core.g.dart';

class Api {
  static final client = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
      baseUrl: 'http://192.168.100.205:5000',
      connectTimeout: 50000,
      receiveTimeout: 50000,
    ),
  );
}
