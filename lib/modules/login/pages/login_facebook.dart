// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _isLoggedIn = false;
//   Map _userObj = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Facebook Login"),
//       ),
//       body: Center(
//         child: _isLoggedIn
//             ? Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.network(_userObj["picture"]["data"]["url"]),
//                   Text(_userObj["name"]),
//                   ElevatedButton(
//                     onPressed: () {
//                       logout();
//                     },
//                     child: Text("Logout"),
//                   ),
//                 ],
//               )
//             : Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     loginWithFB();
//                   },
//                   child: Text("Login with Facebook"),
//                 ),
//               ),
//       ),
//     );
//   }

//   void loginWithFB() async {
//     FacebookAuth.instance.login().then((result) {
//       FacebookAuth.instance.getUserData().then((userData) {
//         setState(() {
//           _isLoggedIn = true;
//           _userObj = userData;
//         });
//       });
//     });
//   }

//   void logout() {
//     FacebookAuth.instance.logOut().then((value) {
//       setState(() {
//         _isLoggedIn = false;
//         _userObj = {};
//       });
//     });
//   }
// }
