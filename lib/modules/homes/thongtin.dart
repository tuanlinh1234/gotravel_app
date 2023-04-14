import 'package:doantn/modules/homes/bill.dart';
import 'package:doantn/modules/homes/dat1.dart';
import 'package:doantn/modules/homes/dat2.dart';
import 'package:doantn/modules/homes/dat3.dart';
import 'package:doantn/modules/homes/test.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  DetailState createState() => DetailState();
}

class DetailState extends State<Detail> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  void _navigateToNextPage() {
    if (currentIndex < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _navigateToPreviousPage() {
    if (currentIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  double _top = 100.0;
  double _left = 100.0;

  void _onMove(Offset delta) {
    setState(() {
      _top += delta.dy;
      _left += delta.dx;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    final appBarHeight = AppBar().preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final remainingHeight = screenHeight - appBarHeight - statusBarHeight - 200;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Đặt tour"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: remainingHeight,
                  width: screenWidth,
                  child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const OrderScreen();
                        } else if (index == 1) {
                          return const ContactInfo();
                        } else if (index == 2) {
                          return const AllScreen();
                        }
                        return null;
                      }),
                ),
                Container(
                  height: 12,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return buildIndicator(index == currentIndex, size);
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (currentIndex > 0)
                      ElevatedButton(
                          onPressed: _navigateToPreviousPage,
                          child: const Text('Quay lại')),
                    if (currentIndex < 2 - 1)
                      ElevatedButton(
                          onPressed: _navigateToNextPage,
                          child: const Text('Tiếp tục')),
                    if (currentIndex > 0 && currentIndex < 2)
                      ElevatedButton(
                          onPressed: _navigateToNextPage,
                          child: const Text('Tiếp tục')),
                    if (currentIndex == 2)
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const BillScreen(),
                              ),
                            );
                          },
                          child: const Text('Đặt tour')),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      width: isActive ? size.width * 1 / 5 : 30,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueGrey : Colors.amber,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(1, 2),
            blurRadius: 3,
          )
        ],
      ),
    );
  }
}
