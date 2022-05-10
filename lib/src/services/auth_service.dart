part of kotc_core;

class AuthService {
  Future<void> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (err) {
      return _handleFirebaseAuthRegisterException(err);
    } catch (err) {
      return _handleGeneralRegisterException(err);
    }
  }

  /// Registers a new user.
  Future<void> register(String name, String email, String password) async {
    UserCredential credential;

    try {
      credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw 'Unable to register you, Please try later!';
      }
    } on FirebaseAuthException catch (err) {
      return _handleFirebaseAuthRegisterException(err);
    } catch (err) {
      return _handleGeneralRegisterException(err);
    }

    return _handleUserCreation(credential);
  }
}

Future<void> _handleUserCreation(
  UserCredential credential, [
  String? name,
  String? email,
]) async {
  try {
    final _name =
        name ?? credential.user?.displayName?.split('@').first ?? 'user';
    final _email = email ?? credential.user!.email;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(credential.user!.uid)
        .set({
      'id': credential.user!.uid,
      'name': _name,
      'email': _email,
      'token': await FirebaseMessaging.instance.getToken(),
      'device_id': await DeviceIdentity.getUid(),
      'is_premium': false,
      'timed_mode_high_score': 0,
      'endless_mode_high_score': 0,
    });
  } catch (err) {
    // Remove the create user from FirebaseAuth since, there is no valid
    // record in the firestore database.
    await credential.user?.delete();

    return _handleGeneralRegisterException(err);
  }

  try {
    /// TODO: initialize new user stats on API side.
  } catch (err) {
    // Remove the user from firestore since, the existence of this user
    // is no longer correct.
    await FirebaseFirestore.instance
        .collection('users')
        .doc(credential.user!.uid)
        .delete();

    // Remove the create user from FirebaseAuth since, there is no valid
    // record in the firestore database.
    await credential.user?.delete();

    return _handleGeneralRegisterException(err);
  }
}

void _handleGeneralRegisterException(Object err) {
  Logger.error(err);

  throw 'Unable to register you, Please try later!';
}

void _handleFirebaseAuthRegisterException(FirebaseAuthException err) {
  switch (err.code) {
    case 'invalid-email':
      throw 'Email is invalid';
    case 'user-not-found':
      throw 'User is not found please sign up';
    case 'wrong-password':
      throw 'Email or password is incorrect';
    default:
      Logger.error(err);

      throw 'Unable to register you, Please try later!';
  }
}
