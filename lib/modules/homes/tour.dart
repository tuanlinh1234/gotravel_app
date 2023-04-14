import 'package:doantn/modules/homes/chitiet.dart';
import 'package:doantn/modules/homes/homescreen.dart';
import 'package:doantn/modules/homes/lienhe.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BookTour extends StatelessWidget {
  const BookTour({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController date = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 157, 203, 240),
                  Color.fromARGB(255, 232, 178, 240)
                ],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Column(
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
                                    builder: (BuildContext context) =>
                                        const Contact(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Thông tin',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                      const Text(
                          'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM'),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            const Text('Khởi hành:'),
                            const SizedBox(
                              width: 25,
                            ),
                            SizedBox(
                                width: 200,
                                height: 50,
                                child: TextField(
                                  controller: date,
                                  decoration: const InputDecoration(
                                    suffixIcon: Icon(Ionicons.caret_down),
                                    hintText: ('29/03/2003'),
                                  ),
                                  onTap: () async {
                                  },
                                  readOnly: true,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            const Text('Kết thúc:'),
                            const SizedBox(
                              width: 35,
                            ),
                            SizedBox(
                                width: 200,
                                height: 50,
                                child: TextField(
                                  controller: date,
                                  decoration: const InputDecoration(
                                    suffixIcon: Icon(Ionicons.caret_down),
                                    hintText: ('04/04/2003'),
                                  ),
                                  onTap: () async {
                                  },
                                  readOnly: true,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: const [
                            Text('Mã Tour:'),
                            SizedBox(
                              width: 35,
                            ),
                            Text('HA35346'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: const [
                            Text('Phương tiện:'),
                            SizedBox(
                              width: 7,
                            ),
                            Text('Hàng không Việt Nam Airlines'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: const [
                            Text('Giá:'),
                            SizedBox(
                              width: 65,
                            ),
                            Text('6.750.000 vnd'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blue, backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ChiTiet(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Chi tiết',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const HomeScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Đặt tour',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      )),
    );
  }
}
