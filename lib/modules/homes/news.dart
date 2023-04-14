import 'package:doantn/modules/homes/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
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
                                    const HomeScreen(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Chuỗi lễ hội khinh khí cầu dịp lễ 30.4',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Trước thềm kỉ niệm 48 năm giải phóng miền Nam, thống nhất đất nước thì nhiều tỉnh thành chọn lễ hội khinh khí cầu, thay vì bắn pháo hoa như mọi năm.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Theo đó, sở Du lịch tỉnh Bình Định đã công bố tổ chức lễ hội khinh khí cầu lần đầu tiên tại thành phố Quy Nhơn. Lễ hội sẽ diễn ra từ 30.4 đến 9.5 với 10 khinh khí cầu lớn và 5 khinh khí cầu nhỏ. Trong đó, một số khinh khí cầu neo tại chỗ và một số sẽ là khinh khí cầu bay để du khách cùng người dân có thể trải nghiệm. '),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset('assets/images/n1.jpeg'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Nằm trong chuỗi sự kiện Cà Mau - Điểm đến 2023, ngày hội khinh khí cầu cũng sẽ diễn ra hai ngày 30.4 và 1.5 tại bãi biển Khai Long (xã Đất Mũi, huyện Ngọc Hiển). Sẽ có khoảng 20 khinh khí cầu đủ kích thước cùng biểu diễn trên bầu trời. Ban tổ chức còn chuẩn bị không gian âm nhạc, ẩm thực phục vụ du khách.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Nằm trong chuỗi sự kiện Cà Mau - Điểm đến 2023, ngày hội khinh khí cầu cũng sẽ diễn ra hai ngày 30.4 và 1.5 tại bãi biển Khai Long (xã Đất Mũi, huyện Ngọc Hiển). Sẽ có khoảng 20 khinh khí cầu đủ kích thước cùng biểu diễn trên bầu trời. Ban tổ chức còn chuẩn bị không gian âm nhạc, ẩm thực phục vụ du khách.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Ngày hội khinh khí cầu cũng được diễn ra ngày 24.3 tại biển Đồi Dương (Bình Thuận) với mong muốn tạo dấu ấn trước khi tổ chức Lễ khai mạc Năm Du lịch quốc gia 2023 “Bình Thuận – Hội tụ xanh”.Sẽ có 30 khinh khí cầu thả bay trên trời và 6 khinh khí cầu ở mặt đất đáp ứng nhu cầu check-in của khán giả.'),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
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
