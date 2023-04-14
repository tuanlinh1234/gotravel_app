import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              child: SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 137, top: 3),
                          child: Icon(
                            Ionicons.heart,
                            color: Colors.red,
                          ),
                        )
                      ],
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
                                Icon(Ionicons.logo_bitcoin),
                                Text(
                                  '2.500.000 vnd',
                                ),
                              ],
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
                height: 120,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image.asset('assets/images/6.jpg'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 137, top: 3),
                              child: Icon(
                                Ionicons.heart,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
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
                                Icon(Ionicons.logo_bitcoin),
                                Text(
                                  '2.500.000 vnd',
                                ),
                              ],
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
                height: 120,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 137, top: 3),
                          child: Icon(
                            Ionicons.heart,
                            color: Colors.red,
                          ),
                        )
                      ],
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
                                Icon(Ionicons.logo_bitcoin),
                                Text(
                                  '2.500.000 vnd',
                                ),
                              ],
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
                height: 120,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/6.jpg'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 137, top: 3),
                          child: Icon(
                            Ionicons.heart,
                            color: Colors.red,
                          ),
                        )
                      ],
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
                                Icon(Ionicons.logo_bitcoin),
                                Text(
                                  '2.500.000 vnd',
                                ),
                              ],
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
          ],
        ),
      ),
    );
  }
}
