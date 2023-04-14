import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff1e6091),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      content: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'THANH TOÁN THÀNH CÔNG',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lalezar',
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.white,
                      ),
                    ),
                    const Text(
                      'THANH TOÁN THÀNH CÔNG',
                      style: TextStyle(
                          fontFamily: 'Lalezar',
                          fontSize: 20,
                          color: Color(0xff118ab2)),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            GestureDetector(
                child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }, //onPressed,
                    label: const Text(
                      "OK",
                      style: TextStyle(
                          fontFamily: 'Lalezar',
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(
                              top: 8, bottom: 3, left: 50, right: 50)),
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                    style: BorderStyle.solid,
                                  ))),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffff4d6d)),
                    )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
