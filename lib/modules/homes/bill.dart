import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController date = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Thanh toán"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text(
                    'Mã hóa đơn:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text('HA35346'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  const Text(
                    'Ngày lập hóa đơn:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 150,
                      height: 50,
                      child: TextField(
                        controller: date,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Ionicons.caret_down),
                          hintText: ('25/03/2023'),
                        ),
                        onTap: () async {},
                        readOnly: true,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text(
                    'Mã Tour:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text('HA35346'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text(
                    'Giá:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text('6.750.000 vnd'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Vui lòng chọn phương thức thanh toán: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Text(
                    'Thanh toán qua MOMO',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/momo.png'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Text(
                    'Thanh toán qua ZaloPay',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/zalopage.png'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Text(
                    'Thanh toán qua ATM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.atm_rounded),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
