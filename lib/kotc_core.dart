library kotc_core;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'src/game_mode/timed_mode/api.dart';

part 'src/game_mode/timed_mode/request.dart';

part 'src/game_mode/timed_mode/response.dart';

part 'kotc_core.g.dart';

class Api {
  static final client = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
      baseUrl: 'https://api.kingofthecurve.org/',
      connectTimeout: 50000,
      receiveTimeout: 50000,
    ),
  );
}
