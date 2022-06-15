part of 'storage_config.dart';

mixin SoundConfigMixin on EventNotifier {
  bool get isSoundEnabled => StorageConfigMixin._prefs.getBool('sound') ?? true;

  Future<void> toggleSound([bool? _]) async {
    if (isSoundEnabled) {
      StorageConfigMixin._prefs.setBool('sound', false);
    } else {
      StorageConfigMixin._prefs.setBool('sound', true);
    }

    notifyListeners(Events.sound);
  }

  Future<void> play(String track) async {
    /// Play Track
  }
}
