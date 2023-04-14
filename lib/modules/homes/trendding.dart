import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../components/textfield/textfield_search.dart';

import 'homescreen.dart';

class TrenddingScreen extends StatelessWidget {
  const TrenddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/dulich.jpg',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: InkWell(
                    child: const Padding(
                      padding: EdgeInsets.only(right: 350),
                      child: Icon(
                        Ionicons.arrow_back_outline,
                        size: 30,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(5),
                child: const SizedBox(
                  height: 45,
                  width: 300,
                  child: MyTextFieldSearch(),
                )),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      '25/04/2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Ionicons.alarm),
                                    Text(
                                      '3 ngày 2 đêm',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
