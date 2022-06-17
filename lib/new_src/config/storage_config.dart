import 'dart:async';

// import 'package:just_audio/just_audio.dart';
import 'package:kotc_core/new_src/notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sound_config.dart';

///
mixin StorageConfigMixin {
  ///
  static Future<void> setup() async {
    _prefs = await SharedPreferences.getInstance();
    
    /// TODO: Setup Isar too.
  }
  
  
  static late SharedPreferences _prefs;
}