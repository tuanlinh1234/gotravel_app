import 'package:doantn/modules/homes/policy.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TheoDoi extends StatefulWidget {
  const TheoDoi({super.key});

  @override
  State<TheoDoi> createState() => _TheoDoiState();
}

class _TheoDoiState extends State<TheoDoi> {
  @override
  Widget build(BuildContext context) {
    TextEditingController date = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Lịch trình')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset('assets/images/6.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
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
            padding: const EdgeInsets.only(left: 5),
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
            padding: const EdgeInsets.only(left: 5),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const PolicyScreen(),
                      ),
                    );
                  },
                  child: const Text('Hủy Tour')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Chi tiết')),
            ],
          )
        ]),
      ),
    );
  }
}
