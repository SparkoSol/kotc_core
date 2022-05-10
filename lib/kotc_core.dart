library kotc_core;

import 'dart:io';
import 'dart:math' as math;
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';


part 'src/firebase/collections/app_user.dart';
part 'src/services/auth_service.dart';

part 'src/pretty_dio_logger.dart';

part 'src/utils/logger.dart';

part 'src/utils/identity.dart';

part 'kotc_core.g.dart';

///
abstract class Api {
  ///
  static final client = Dio(
    BaseOptions(
      headers: const {'Content-Type': 'application/json'},
      // baseUrl: 'http://10.20.20.83:5000',
      baseUrl: 'https://api.kingofthecurve.org/v2',
      connectTimeout: 50000,
      receiveTimeout: 50000,
    ),
  );
}
