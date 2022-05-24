// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mealapp/models/appUser.dart';
// import 'package:mealapp/services/auth.dart';

// class UserAuth extends ChangeNotifier {
//   UserAuth() {
//     loadLoaggedUser();
//   }
//   AppUser? user;

//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final FirebaseFirestore firestore = FirebaseFirestore.instance;

//   Future<void> signUp({
//     AppUser? user,
//     Function? onfail,
//     Function? onSucess,
//   }) async {
//     try {
//       final UserCredential result = await auth.createUserWithEmailAndPassword(
//         email: user?.email,
//         password: user?.password,
//       );
//       user?.id = result.user?.uid;

//       await user?.saveInfo();
//       onSucess!(print("Success"));
//     } catch (e) {
//       onfail!("Error");
//     }
//   }

//   Future<void> signIn({
//     AppUser? user,
//     Function? onfail,
//     Function? onSucess,
//   }) async {
//     try {
//       final UserCredential result = await auth.signInWithEmailAndPassword(
//         email: user?.email,
//         password: user?.password,
//       );
//       await loadLoaggedUser(firebaseUser: result.user);
//       onSucess!();
//       // user!.id = result.user!.uid;

//       // await user.saveInfo();
//     } catch (e) {
//       onfail!("Error with the following error $e");
//     }
//   }

//   Future<void> loadLoaggedUser({User? firebaseUser}) async {
//     final User? currentUser = firebaseUser ?? await auth.currentUser;
//     if (currentUser != null) {
//       final DocumentSnapshot documentUser =
//           await firestore.collection("users").doc(currentUser.uid).get();
//       user = AppUser.fromDocument(documentUser);
//       notifyListeners();
//     }
//   }
// }
