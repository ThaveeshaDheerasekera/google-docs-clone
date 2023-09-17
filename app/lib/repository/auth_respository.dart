import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepostoryProvider = Provider((ref) => AuthRepository(
      googleSignIn: GoogleSignIn(),
    ));

class AuthRepository {
  final GoogleSignIn _googleSignIn;

  AuthRepository({
    required GoogleSignIn googleSignIn,
  }) : _googleSignIn = googleSignIn;

  void signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      print('user is null');
      if (user != null) {
        print(user.email);
        print(user.displayName);
        print(user.authentication);
      } else {
        print('user is null');
      }
    } catch (e) {
      print(e);
    }
  }
}
