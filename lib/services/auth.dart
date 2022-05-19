import 'package:firebase_auth/firebase_auth.dart';
import 'package:mealapp/models/appUser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User _userFromFirebaseUser(User user){
  //   return user != null ? User(appointment: appointment)
  // }
  AppUser? _userFromFirebaseUser(User? firebaseUser) {
    return firebaseUser != null ? AppUser(id: firebaseUser.uid) : null;
  }

  //Auth change user stream

  Stream<AppUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
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

   Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }
  //register in with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      // create a new document for the user with the uid

      // await DatabaseService(uid: user.uid)
      //     .updateUserData('0', 'new crew member', 100);
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
  //Sign out

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
