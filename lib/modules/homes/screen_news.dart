import 'package:doantn/modules/homes/news.dart';
import 'package:doantn/modules/homes/thongtin.dart';
import 'package:doantn/modules/homes/trendding.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../components/textfield/textfield_search.dart';
import 'chitiet.dart';
import 'dubao/weather.dart';

class ScreenNews extends StatelessWidget {
  const ScreenNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   height: 200,
            //   width: screenWidth,
            //   color: Colors.blue,
            // ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 270,
                      child: MyTextFieldSearch(),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  WeatherScreen(),
                            ),
                          );
                        },
                        icon: Icon(
                          Ionicons.rainy_outline,
                          size: 35,
                        )),
                  ],
                )),
            Expanded(
                child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Đang được ưa chuộng',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: SizedBox(
                        width: 350,
                        height: 120,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
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
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                                width: 200,
                                height: 250,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/19.jpg'),
                                    const Positioned(
                                      top: 35,
                                      left: 60,
                                      child: Text(
                                        'Tour Hội An',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Text(
                                        '2.500.000 vnd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 50, 180, 21)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      left: 65,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 112, 81, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Đặt tour',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            InkWell(
                              child: Row(
                                children: const [
                                  Text(
                                    'Tấc cả',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Icon(
                                    Icons.double_arrow,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const TrenddingScreen(),
                                  ),
                                );
                              },
                            )
                          ]),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Text(
                        'Tin tức nổi bậc',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Chuỗi lễ hội khinh khí cầu dịp lễ 30.4'),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const News(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Trải nghiệm hấp dẫn tại Lễ hội Du lịch Hà Nội năm 2023'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Lễ hội xoài Đồng Tháp sắp được tổ chức'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Chuỗi sự kiện trải nghiệm du lịch xanh ở Quảng Nam'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Việt Nam có 3 điểm đến nằm trong top 10 điểm thịnh hành của du khách Anh'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Tăng cường chương trình trải nghiệm nghề gốm ở làng cổ Phước Tích'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Hà Nội trong Top 10 điểm đến được tìm kiếm nhiều nhất dịp 30.4'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Bình Thuận đang gấp rút chuẩn bị cho Lễ khai mạc Năm Du lịch Quốc gia 2023'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Xem xét mở lại tuyến du lịch tàu biển Bắc Hải - vịnh Hạ Long'),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Image.asset('assets/images/n1.jpeg'),
                        title: const Text(
                            'Đà Nẵng sẽ đưa Dòng sông ánh sáng hoạt động vào cuối năm 2023'),
                      ),
                      onTap: () {},
                    ),
                  ]),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }

  void callNews() {
    // Call the News function or do whatever you want here
    const News();
  }
}
