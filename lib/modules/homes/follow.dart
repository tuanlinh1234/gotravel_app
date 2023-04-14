import 'package:doantn/modules/homes/chitiet.dart';
import 'package:doantn/modules/homes/theodoi.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FollowTour extends StatefulWidget {
  const FollowTour({super.key});

  @override
  State<FollowTour> createState() => _FollowTourState();
}

class _FollowTourState extends State<FollowTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theo dõi tour'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const TheoDoi(),
                    ),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ChiTiet(),
                    ),
                  );
                },
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
    );
  }
}
