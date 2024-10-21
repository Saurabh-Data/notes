import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //  User object based on Firebase User
  UserModel? _userFromFirebaseUser(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //  for authentication state changes
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // Sign in with email and password
  Future<UserModel?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebaseUser(result.user);
    } catch (e) {
      print("Error signing in: ${e.toString()}");
      return null;
    }
  }

  // Register with email and password
  Future<UserModel?> registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return _userFromFirebaseUser(result.user);
    } catch (e) {
      print("Error registering: ${e.toString()}");
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Error signing out: ${e.toString()}");
    }
  }
}
