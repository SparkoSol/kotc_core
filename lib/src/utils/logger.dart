part of kotc_core;


class Logger {
  static void info(String message) => _log(message, 'INFO');

  static void error(dynamic err) => _log(err.toString(), 'ERROR');

  static void _log(String message, String type) {
    var toApi = true;

    assert(() {
      toApi = false;
      // debugPrint('[$type] $message');

      return true;
    }());

    if (toApi) {
      Api.client.post('/logs', data: {
        'level': type,
        'message': message,
        // 'platform': defaultTargetPlatform.name,
      });
    }
  }
}
