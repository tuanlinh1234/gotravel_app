import 'package:doantn/modules/homes/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

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
                          'Những thông tin cần lưu ý',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Bảng giá',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Table(
                            border: TableBorder.all(),
                            children: const [
                              TableRow(
                                children: [
                                  Text(
                                    'Độ tuổi',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Giá vé',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('Trên 14'),
                                  Text('2.500.000 vnd'),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('Dưới 14 tuổi'),
                                  Text('1.200.000 vnd'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Giá tour bao gồm',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        const Text('Phương tiện di chuyển: máy bay, xe khách, ...'),
                        const Text(
                            'Khách sạn: 3 sao: Adele, Ale,… hoặc tương đương. 4 sao: Erica, Nalicas, Rigel,... hoặc tương đương. 5 sao: Virgo… hoặc tương đương. Tiêu chuẩn 02-03 khách/phòng. Tiện nghi: máy lạnh, tivi, nước nóng, vệ sinh'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Giá tour không bao gồm',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        const Text(
                            'Tiền TIP cho HDV + Tài xế địa phương, VAT Chi phí cá nhân ngoài chương trình: giặt ủi, điện thoại, minibar… Chi phí bùn khoáng nóng tùy loại dịch vụ/ Vin Wonders…'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Quy định trẻ em',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        const Text(
                            'Dưới 05 tuổi: Miễn phí (chi phí phát sinh trên tour gia đình tự chi trả). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính 50% giá tour. Từ 05 – dưới 10 tuổi: 50% giá tour người lớn, ngủ ghép với gia đình. Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính giá như người lớn. Từ 10 tuổi trở lên: giá tour như người lớn.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Điều kiện hủy tour',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        const Text('Hủy tour sau khi đăng kí: 30% giá tour.'),
                        const Text('Trước ngày đi 20 Ngày: 50% giá tour.'),
                        const Text('Trước ngày đi 10-19 ngày: 75% giá tour.'),
                        const Text('Trước ngày đi 0-10 Ngày: 100% giá tour.'),
                        const Text(
                            'Chú ý: Quý khách hàng vui lòng đến quầy thanh toán để thực hiện hủy tour',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
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
