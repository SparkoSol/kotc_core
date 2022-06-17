import 'package:kotc_core/src/data.dart';

mixin AuthDataMixin {
  static const _key = r'$token$';

  ///
  void saveToken(String token) => AppData.put(_key, token);

  ///
  void deleteToken() => AppData.del(_key);
}
