part of kotc_core;

///
class DeviceIdentity {
  /// Returns the unique id depending upon the platform.
  static Future<String?> getUid() async {
    final info = DeviceInfoPlugin();

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return (await info.androidInfo).androidId;
      case TargetPlatform.fuchsia:
        throw 'Device not supported yet';
      case TargetPlatform.iOS:
        return (await info.iosInfo).identifierForVendor;
      case TargetPlatform.linux:
        return (await info.linuxInfo).id;
      case TargetPlatform.macOS:
        return (await info.macOsInfo).systemGUID;
      case TargetPlatform.windows:
        return (await info.windowsInfo).computerName;
    }
  }

  /// Returns the Firebase CM token for this device.
  /// TODO: Will see if need this method or not.
  static Future<String?> getFcmToken() {
    return FirebaseMessaging.instance.getToken();
  }
}