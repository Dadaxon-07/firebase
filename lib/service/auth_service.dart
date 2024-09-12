import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final _auth = FirebaseAuth.instance;

  static Future<User?> signInUser(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User? firebaseUser = _auth.currentUser;
    return firebaseUser;
  }
}
