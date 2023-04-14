// import 'dart:convert';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:doantn/components/form/formRegister/frm_register.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// class SignInProvider extends ChangeNotifier {
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   final FacebookAuth facebookAuth = FacebookAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
  
//   bool _isSignedIn = false;
//   bool get isSignedIn => _isSignedIn;
//   bool _haserror = false;
//   bool get haserror => _haserror;
//   String? _errorCode;
//   String? get errorCode => _errorCode;
//   String? _provider;
//   String? get provider => _provider;
//   String? _uid;
//   String? get uid => _uid;
//   String? _username;
//   String? get username => _username;
//   String? _email;
//   String? get email => _email;
//   String? _imageUrl;
//   String? get imageUrl => _imageUrl;
//   SignInProvider() {
//     checkSignInUser();
//   }

//   get hasInternet => null;
//   Future checkSignInUser() async {
//     final SharedPreferences s = await SharedPreferences.getInstance();
//     _isSignedIn = s.getBool("signed_in") ?? false;
//     notifyListeners();
//   }

//   Future setSignIn() async {
//     final SharedPreferences s = await SharedPreferences.getInstance();
//     s.setBool("sign_in", true);
//     _isSignedIn = true;
//     notifyListeners();
//   }

//   Future signInWithGoogle() async {
//     final GoogleSignInAccount? googleSignInAccount =
//         await googleSignIn.signIn();
//     if (googleSignInAccount != null) {
//       try {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//             await googleSignInAccount.authentication;
//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken,
//         );
//         final User userDetails =
//             (await firebaseAuth.signInWithCredential(credential)).user!;
//         _username = userDetails.displayName;
//         _email = userDetails.email;
//         _imageUrl = userDetails.photoURL;
//         _provider = "GOOGLE";
//         _uid = userDetails.uid;
//         notifyListeners();
//       } on FirebaseAuthException catch (e) {
//         switch (e.code) {
//           case "account-exists-with-different-credentials":
//             _errorCode =
//                 "You already have an account with us. Use correct provider";
//             _haserror = true;
//             notifyListeners();
//             break;
//           case "null":
//             _errorCode = "Some unexpected error while trying to sign in";
//             _haserror = true;
//             notifyListeners();
//             break;
//           default:
//             _errorCode = e.toString();
//             _haserror = true;
//             notifyListeners();
//         }
//       }
//     } else {
//       _haserror = true;
//       notifyListeners();
//     }
//   }
// Future signInWithFacebook() async {
//     final LoginResult result = await facebookAuth.login();
//     // getting the profile
//     final graphResponse = await http.get(Uri.parse(
//         'https://graph.facebook.com/v2.12/me?fields=name,picture.width(800).height(800),first_name,last_name,email&access_token=${result.accessToken!.token}'));

//     final profile = jsonDecode(graphResponse.body);

//     if (result.status == LoginStatus.success) {
//       try {
//         final OAuthCredential credential =
//             FacebookAuthProvider.credential(result.accessToken!.token);
//         await firebaseAuth.signInWithCredential(credential);
//         // saving the values
//         _username = profile['name'];
//         _email = profile['email'];
//         _imageUrl = profile['picture']['data']['url'];
//         _uid = profile['id'];
//         _haserror = false;
//         _provider = "FACEBOOK";
//         notifyListeners();
//       } on FirebaseAuthException catch (e) {
//         switch (e.code) {
//           case "account-exists-with-different-credential":
//             _errorCode =
//                 "You already have an account with us. Use correct provider";
//             _haserror = true;
//             notifyListeners();
//             break;

//           case "null":
//             _errorCode = "Some unexpected error while trying to sign in";
//             _haserror = true;
//             notifyListeners();
//             break;
//           default:
//             _errorCode = e.toString();
//             _haserror = true;
//             notifyListeners();
//         }
//       }
//     } else {
//       _haserror = true;
//       notifyListeners();
//     }
//   }
//   Future getUserDataFromFireStore(uid) async {
//     await FirebaseFirestore.instance
//         .collection("users")
//         .doc(uid)
//         .get()
//         .then((DocumentSnapshot snapshot) => {
//               _uid = snapshot['uid'],
//               _username = snapshot['displayName'],
//               _email = snapshot['email'],
//               _imageUrl = snapshot['image_url'],
//               _provider = snapshot['provider'],
//             });
//   }

//   Future saveDataToFirestore() async {
//     final DocumentReference r =
//         FirebaseFirestore.instance.collection("users").doc(uid);
//     await r.set({
//       "name": _username,
//       "email": _email,
//       "image_url": _imageUrl,
//       "uid": _uid,
//       "provider": _provider,
//     });
//     notifyListeners();
//   }

//   Future saveDataToSharedPreferences() async {
//     final SharedPreferences s = await SharedPreferences.getInstance();
//     await s.setString('name', _username!);
//     await s.setString('email', _email!);
//     await s.setString('image_url', _imageUrl!);
//     await s.setString('provider', _provider!);
//     await s.setString('uid', _uid!);
//     notifyListeners();
//   }

//   Future<bool> checkUserExists() async {
//     DocumentSnapshot snap =
//         await FirebaseFirestore.instance.collection('users').doc(_uid).get();
//     if (snap.exists) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future userSignOut() async {
//     await firebaseAuth.signOut;
//     await googleSignIn.signOut();
//     _isSignedIn = false;
//     notifyListeners();
//     clearStoredData();
//   }

//   Future clearStoredData() async {
//     final SharedPreferences s = await SharedPreferences.getInstance();
//     s.clear();
//   }

//   checkInternetConnection() {}
// }
