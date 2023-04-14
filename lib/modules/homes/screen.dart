import 'package:doantn/modules/homes/thongtin.dart';
import 'package:doantn/modules/homes/trendding.dart';
import 'package:flutter/material.dart';
import '../../components/textfield/textfield_search.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  final List<String> images = [
    'assets/images/c1.jpg',
    'assets/images/c2.jpeg',
    'assets/images/c3.png',
    'assets/images/c4.png',
    'assets/images/c5.jpg',
    'assets/images/c6.jpg',
    'assets/images/c7.jpg',
  ];
  int currentIndex = 0;
  PageController pageControllers = PageController(initialPage: 0);
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 3000), (Timer t) {
      if (pageController.position.pixels ==
          pageController.position.maxScrollExtent) {
        pageController.jumpToPage(0);
      } else {
        pageController.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: screenWidth,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    children:
                        images.map((image) => Image.asset(image)).toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, top: 180),
                  child: Container(
                    height: 10,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return buildIndicator(index == currentIndex, size);
                      },
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const SizedBox(
                        height: 45,
                        width: 300,
                        child: MyTextFieldSearch(),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Đang được ưa chuộng',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                const Positioned(
                                  top: 50,
                                  left: 50,
                                  child: Text(
                                    '2.500.000 vnd',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 50, 180, 21)),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 65,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 112, 81, 4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Detail(),
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
                        ),
                      ]),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Xu hướng',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset('assets/images/1.jpg'),
                    title: const Text('PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Detail(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset('assets/images/2.jpg'),
                    title: const Text(
                        'ĐÀ NẴNG | BIỂN MỸ KHÊ | HỘI AN | BÀ NÀ HILLS'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Detail(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset('assets/images/3.jpg'),
                    title:
                        const Text('ĐỨC MẸ NÚI CÚI | ĐỨC MẸ TÀ PAO | MŨI NÉ'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Detail(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset('assets/images/4.jpg'),
                    title: const Text(
                        'NHA TRANG | KDL VINWONDERS | DU NGOẠN VỊNH ĐẢO '),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Detail(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/5.jpg'),
                  title: const Text(
                      'CAM RANH | KHÁM PHÁ VỊNH VĨNH HY | NGẮM SAN HÔ'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/6.jpg'),
                  title: const Text('QUY NHƠN | PHÚ YÊN | ĐẢO KỲ CO | EO GIÓ'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/21.jpg'),
                  title: const Text('ĐÀ NẴNG | PHỐ CỔ HỘI AN | KINH ĐÔ HUẾ'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/8.jpg'),
                  title: const Text(
                      'PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM | SUNSET TOWN'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/9.jpg'),
                  title: const Text(
                      'HÀ NỘI | SAPA | LÀO CAI | BÁI ĐÍNH | HẠ LONG'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/11.jpg'),
                  title: const Text('ĐÀ NẴNG | PHỐ CỔ HỘI AN | KINH ĐÔ HUẾ'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/12.jpg'),
                  title: const Text('BIỂN NẮNG NHA TRANG | SẮC HOA ĐÀ LẠT'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/13.jpg'),
                  title: const Text(
                      'PHAN THIẾT | BIKINI BEACH | LÂU ĐÀI RƯỢU VANG'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/14.jpg'),
                  title: const Text(
                      'ĐÀ LẠT: THIÊN ĐƯỜNG SĂN MÂY | KOKORO COFFEE | MELINH'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/15.jpg'),
                  title: const Text(
                      'CHÂU ĐỐC | TRÀ SƯ | CẦN THƠ | LỄ HỘI BÁNH DÂN GIAN'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/16.jpg'),
                  title: const Text(
                      'PHÚ YÊN | THÁP NGHINH PHONG | VỊNH VŨNG RÔ | ĐẢO HÒN NƯA'),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/17.jpg'),
                  title: const Text(
                      'ĐÀ LẠT | THIÊN ĐƯỜNG HOA | VÙNG ĐẤT CỔ TÍCH FAIRYTALE'),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: isActive ? size.width * 1 / 5 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueGrey : Colors.amber,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(1, 2),
            blurRadius: 1,
          )
        ],
      ),
    );
  }
}
