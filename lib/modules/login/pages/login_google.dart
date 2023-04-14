// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:googleapis/drive/v3.dart' as drive;
// import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Google Sign In Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late GoogleSignInAccount _currentUser;
//   bool _isLoading = false;

//   final _googleSignIn = GoogleSignIn(
//     scopes: [
//       'email',
//       'https://www.googleapis.com/auth/drive.file',
//     ],
//   );

//   Future<void> _signInWithGoogle() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final account = await _googleSignIn.signIn();

//       if (account != null) {
//         setState(() {
//           _currentUser = account;
//         });

//         // Thực hiện yêu cầu HTTP đến Google Drive API để tạo tệp tin mới
//         final headers = await _currentUser.authHeaders;
//         final authenticateClient = GoogleAuthClient(headers);
//         final driveAPI = drive.DriveApi(authenticateClient);
//         final file = drive.File();
//         file.name = 'New File';
//         await driveAPI.files.create(file);

//         // Chuyển hướng đến trang chính
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => HomePage(
//             currentUser: _currentUser,
//             handleSignOut: _signOut,
//           ),
//         ));
//       }
//     } catch (e) {
//       print('Failed to sign in with Google: $e');
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   void _signOut() {
//     _googleSignIn.signOut();
//     setState(() {
//       _currentUser = null;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _googleSignIn.onCurrentUserChanged.listen((account) {
//       setState(() {
//         _currentUser = account;
//       });
//     });
//     _googleSignIn.signInSilently();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _isLoading ? CircularProgressIndicator() : ElevatedButton(
//           child: Text('Sign in with Google'),
//           onPressed: _signInWithGoogle,
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final GoogleSignInAccount currentUser;
//   final VoidCallback handleSignOut;

//   HomePage({
//     @required this.currentUser,
//     @required this.handleSignOut,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Sign In Demo'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: handleSignOut,
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Hello, ${currentUser.displayName}!',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Image.network(currentUser.photoUrl),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GoogleAuthClient extends http.BaseClient {
//   final Map<String, String> _headers;
//   final http.Client _inner = http.Client();

//   GoogleAuthClient(this._headers);

//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) {
//     return _inner.send(request..headers.addAll(_headers));
//   }
// }
























// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_sign_in/google_sign_in.dart';

// // import 'package:doantn/modules/homes/homescreen.dart';
// // import 'package:doantn/modules/login/pages/data_user.dart';
// // import 'package:doantn/modules/login/pages/phone.dart';

// // import '../../../prefer.dart';

// // class GoogleLogin {
// //   static final fireStone = FirebaseFirestore.instance;

// //   static GoogleSignInAccount? userObj;
// //   // ignore: prefer_final_fields
// //   static GoogleSignIn _googleSignIn = GoogleSignIn();

// //   // ignore: non_constant_identifier_names
// //   void LogIn(context) async {
// //     _googleSignIn.signOut();
// //     userObj = await _googleSignIn.signIn();

// //     Prefer.setMail(mail: userObj!.email);
// //     Prefer.setPicture(picture: userObj!.photoUrl.toString());

// //     final QuerySnapshot result = await FirebaseFirestore.instance
// //         .collection('users')
// //         .where('email', isEqualTo: Prefer.getMail())
// //         .get();

// //     final List<DocumentSnapshot> documents = result.docs;

// //     if (documents.isNotEmpty) {
// //       // ignore: avoid_function_literals_in_foreach_calls
// //       result.docs.forEach((doc) {
// //         doc.reference.update({'timeLogin': DateTime.now()});
// //       });

// //       DataUser.getAll(Prefer.getMail());
// //     } else {
// //       fireStone.collection('users').add({
// //         'email': userObj!.email,
// //         'name': userObj!.displayName,
// //         'photoUrl': userObj!.photoUrl,
// //         'timeLogin': DateTime.now(),
// //         'birthDate': 'Chưa có ngày sinh',
// //       });

// //       Prefer.setName(name: userObj!.displayName.toString());
// //       Prefer.setBirthDate(birthdate: 'Chưa có ngày sinh');
// //       Prefer.setPhone(phone: 'Chưa có số điện thoại');
// //     }

// //     Navigator.pop(context);
// //     Navigator.push(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => HomeScreen(),
// //         ));
// //   }

// //   // ignore: non_constant_identifier_names
// //   void UpdateInfor(
// //       context, String txtName, String txtBirthDate, String txtPhone) async {
// //     if (txtPhone.length != 10) {
// //       showDialog(
// //           context: context,
// //           barrierDismissible: false,
// //           builder: (ctx) {
// //             return NotiPhone();
// //           });
// //       return;
// //     }
// //     final QuerySnapshot result = await FirebaseFirestore.instance
// //         .collection('users')
// //         .where('email', isEqualTo: Prefer.getMail())
// //         .get();

// //     if (txtName != "") {
// //       // ignore: avoid_function_literals_in_foreach_calls
// //       result.docs.forEach((doc) {
// //         doc.reference.update({'name': txtName});
// //       });
// //       Prefer.setName(name: txtName);
// //     }

// //     if (txtBirthDate != "") {
// //       // ignore: avoid_function_literals_in_foreach_calls
// //       result.docs.forEach((doc) {
// //         doc.reference.update({'birthDate': txtBirthDate});
// //       });
// //       Prefer.setBirthDate(birthdate: txtBirthDate);
// //     }

// //     if (txtPhone != "") {
// //       // ignore: avoid_function_literals_in_foreach_calls
// //       result.docs.forEach((doc) {
// //         doc.reference.update({'phone': txtPhone});
// //       });
// //       Prefer.setPhone(phone: txtPhone);
// //     }
// //   }
// // }
