import 'package:firebase_auth/firebase_auth.dart';
import 'package:mealapp/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User _userFromFirebaseUser(User user){
  //   return user != null ? User(appointment: appointment)
  // }
  AppUser? _userFromFirebaseUser(User firebaseUser){
    return firebaseUser != null  ? AppUser(id: firebaseUser.uid): null;
  }
  // sign  in annon

  Future signInAnnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  //register in with email and password
  //Sign out

}
