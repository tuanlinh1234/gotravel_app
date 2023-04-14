// import 'package:doantn/modules/homes/next_screen.dart';
import 'package:doantn/modules/homes/next_screen.dart';
import 'package:doantn/modules/homes/screen.dart';
import 'package:doantn/modules/homes/screen_news.dart';
import 'package:doantn/modules/login/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  void handleSignOut(BuildContext context) async {
    await _googleSignIn.signOut();
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  final List<Widget> _screens = [
    // Add your screens here.
    const Center(child: ScreenNews()),
    const Center(child: HomePage()),
    Center(child: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.newspaper,
              color: Colors.grey,
            ),
            label: 'Tin Tức',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              // ignore: deprecated_member_use
              FontAwesomeIcons.home,
              color: Colors.grey,
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.grey,
            ),
            label: 'Hồ sơ',
          ),
        ],
      ),
    );
  }
}
