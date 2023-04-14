import 'package:doantn/modules/homes/chitiet.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  AllScreenState createState() => AllScreenState();
}

class AllScreenState extends State<AllScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController date = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                          hintText: ('29/03/2023'),
                        ),
                        onTap: () async {
                        },
                        readOnly: true,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                          hintText: ('04/04/2023'),
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
                          builder: (BuildContext context) => const ChiTiet(),
                        ),
                      );
                    },
                    child: const Text(
                      'Chi tiết',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
