import 'package:kotc_core/src/data.dart';
import 'package:kotc_core/src/auth/api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<void> signIn(String username, String password) async {
    UserCredential credential;

    try {
      credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: username, password: password);
    } catch (err) {
      /// TODO: Handle UI side error.
      return;
    }

    try {
      final token = await credential.user?.getIdToken();
      // final apiToken = await AuthApi().generateAPIToken(token!);

      // AppData.instance.saveToken(apiToken);
    } catch (err) {
      await FirebaseAuth.instance.signOut();
    }
  }

  Future<void> signOut() async {
    AppData.instance.deleteToken();
    await FirebaseAuth.instance.signOut();
  }
}
