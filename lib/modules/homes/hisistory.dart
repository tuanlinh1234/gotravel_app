import 'package:doantn/modules/homes/chitiet.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
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
                              Text(
                                'Ngày đặt:',
                              ),
                              Text(
                                '20/04/2023',
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Ionicons.people_circle_outline),
                              Text('Số người: 4'),
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
                              Text(
                                'Ngày đặt:',
                              ),
                              Text(
                                '20/04/2023',
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Ionicons.people_circle_outline),
                              Text('Số người: 4'),
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
    ));
  }
}


// InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => const ChiTiet(),
//                     ),
//                   );
//                 },
//                 child: SizedBox(
//                   height: 100,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Image.asset('assets/images/6.jpg'),
//                       ),
//                       Expanded(
//                         child: Container(
//                           margin: const EdgeInsets.only(right: 8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(Icons.calendar_month),
//                                   Text(
//                                     '25/04/2023',
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(Ionicons.alarm),
//                                   Text(
//                                     '3 ngày 2 đêm',
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => const ChiTiet(),
//                     ),
//                   );
//                 },
//                 child: SizedBox(
//                   height: 100,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Image.asset('assets/images/6.jpg'),
//                       ),
//                       Expanded(
//                         child: Container(
//                           margin: const EdgeInsets.only(right: 8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(Icons.calendar_month),
//                                   Text(
//                                     '25/04/2023',
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(Ionicons.alarm),
//                                   Text(
//                                     '3 ngày 2 đêm',
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),