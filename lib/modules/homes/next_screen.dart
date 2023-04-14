import 'package:doantn/modules/homes/hisistory.dart';
import 'package:doantn/modules/homes/like.dart';
import 'package:doantn/modules/homes/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../login/pages/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  ProfileScreen({super.key});

  void handleSignOut(BuildContext context) async {
    await _googleSignIn.signOut();
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/bia2.jpg',
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 70,
              ),
              child: SizedBox(
                height: 120,
                width: 120,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/z3883727135143_c82b5eaffb05744f6ab023d03ea67d4f.jpg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270, bottom: 80),
              child: SizedBox(
                height: 90,
                width: 90,
                child: InkWell(
                  child: const Icon(
                    Icons.exit_to_app_outlined,
                    color: Colors.amber,
                  ),
                  onTap: () {
                    handleSignOut(context);
                  },
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 472,
          width: 360,
          child: DefaultTabController(
              length: 3,
              child: Column(
                children: const [
                  TabBar(labelColor: Colors.black, tabs: <Widget>[
                    Tab(
                      text: 'Thông tin',
                    ),
                    Tab(
                      text: 'Lịch sử',
                    ),
                    Tab(
                      text: 'Yêu thích',
                    ),
                  ]),
                  Expanded(
                      child: TabBarView(
                    children: [
                      Profile(),
                      HistoryScreen(),
                      LikeScreen(),
                    ],
                  ))
                ],
              )),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15),
        //   child: Column(
        //     children: [
        //       Column(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (BuildContext context) => const Profile(),
        //                 ),
        //               );
        //             },
        //             child: Container(
        //               height: 40,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 color: const Color.fromARGB(255, 242, 239, 239),
        //               ),
        //               child: Row(
        //                 children: const [
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Icon(Icons.person),
        //                   SizedBox(
        //                     width: 10,
        //                   ),
        //                   // ignore: avoid_unnecessary_containers
        //                   Text(
        //                     'Thông tin cá nhân',
        //                     style: TextStyle(color: Colors.blue),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 5,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (BuildContext context) => const ChangPassWord(),
        //                 ),
        //               );
        //             },
        //             child: Container(
        //               height: 40,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 color: const Color.fromARGB(255, 242, 239, 239),
        //               ),
        //               child: Row(
        //                 children: const [
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Icon(Icons.lock_clock_outlined),
        //                   SizedBox(
        //                     width: 10,
        //                   ),
        //                   // ignore: avoid_unnecessary_containers
        //                   Text(
        //                     'Đổi mật khẩu',
        //                     style: TextStyle(color: Colors.blue),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15),
        //   child: Column(
        //     children: [
        //       Column(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (BuildContext context) => const FollowTour(),
        //                 ),
        //               );
        //             },
        //             child: Container(
        //               height: 40,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 color: const Color.fromARGB(255, 242, 239, 239),
        //               ),
        //               child: Row(
        //                 children: const [
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Icon(Icons.place_outlined),
        //                   SizedBox(
        //                     width: 10,
        //                   ),
        //                   // ignore: avoid_unnecessary_containers
        //                   Text(
        //                     'Đã đặt',
        //                     style: TextStyle(color: Colors.blue),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 5,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (BuildContext context) => const HistoryScreen(),
        //                 ),
        //               );
        //             },
        //             child: Container(
        //               height: 40,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 color: const Color.fromARGB(255, 242, 239, 239),
        //               ),
        //               child: Row(
        //                 children: const [
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Icon(Icons.person),
        //                   SizedBox(
        //                     width: 10,
        //                   ),
        //                   // ignore: avoid_unnecessary_containers
        //                   Text(
        //                     'Lịch sử tour',
        //                     style: TextStyle(color: Colors.blue),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 5,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (BuildContext context) => const LikeScreen(),
        //                 ),
        //               );
        //             },
        //             child: Container(
        //               height: 40,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 color: const Color.fromARGB(255, 242, 239, 239),
        //               ),
        //               child: Row(
        //                 children: const [
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Icon(Ionicons.heart),
        //                   SizedBox(
        //                     width: 10,
        //                   ),
        //                   // ignore: avoid_unnecessary_containers
        //                   Text(
        //                     'Tour yêu thích',
        //                     style: TextStyle(color: Colors.blue),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),

        // const SizedBox(
        //   height: 10,
        // ),

        // Form(
        //     child: Column(
        //   children: [
        //     CircleAvatar(
        //       radius: 50.0,
        //       backgroundImage: AssetImage(
        //           'assets/images/131983244_456388975524659_8525073828723362095_n.jpg'),
        //     ),
        //     SizedBox(
        //       height: 8.0,
        //     ),
        //     Text('Phan Tuấn Linh')
        //   ],
        // )),
        // SizedBox(
        //   height: 24.0,
        // ),
        // SizedBox(
        //   height: 40.0,
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     handleSignOut(context);
        //   },
        //   child: Text(
        //     'Đăng xuất',
        //     style: TextStyle(
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white),
        //   ),
        // ),
      ],
    );
  }
}
