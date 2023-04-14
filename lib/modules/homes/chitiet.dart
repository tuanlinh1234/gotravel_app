import 'package:doantn/modules/homes/homescreen.dart';
import 'package:doantn/modules/homes/test.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ChiTiet extends StatefulWidget {
  const ChiTiet({super.key});

  @override
  State<ChiTiet> createState() => _ChiTietState();
}

class _ChiTietState extends State<ChiTiet> {
  @override
  Widget build(BuildContext context) {
    final List<Comment> comments = [
      Comment(text: 'Chuyến đi bất ổn', author: 'Lê Công Thịnh', rating: 4),
      Comment(text: 'Dịch vụ thật chu đáo', author: 'Minh Quân', rating: 3),
    ];

    int currentIndex = 0;
    final List<String> imageUrls = [
      'assets/images/1.jpg'
          'assets/images/2.jpg'
          'assets/images/3.jpg'
    ];

    int rating = 0;
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          MoveableButton(),
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
                          'Tour Du lịch PHÚ QUỐC | GRAND WORLD | KDL HÒN THƠM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'TP HỒ CHÍ MINH - PHÚ QUỐC - GRAND WORLD ( • Ăn sáng • Ăn trưa )'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Sáng: HDV Du Lịch Đất Việt đón khách tại sân bay Tân Sơn Nhất làm thủ tục bay Phú Quốc chuyến bay VJ323 07:30. Đến nơi xe và HDV ở Phú Quốc sẽ đón Quý khách tại sân bay Phú Quốc đưa đoàn về lại trung tâm Dương Đông Phú Quốc. Đoàn dùng bữa sáng tại nhà hàng. (tùy theo giờ bay sẽ sắp xếp ăn sáng cho quý khách).'),
                        const SizedBox(
                          height: 15,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 20),
                        //   child: Image.asset('assets/images/t1.jpg'),
                        // ),
                        GestureDetector(
                          child: Image.asset('assets/images/1.jpg'),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Image.asset('assets/images/1.jpg'),
                                  );
                                });
                          },
                        ),
                        const Text(
                            'Tiếp chương trình xe đưa du khách đi tham quan:'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Dinh Cậu - Dinh Bà: Biểu tượng tín ngưỡng của người dân hải đảo (nơi họ tìm đến khấn nguyện cho mỗi chuyến ra khơi11h30: Đoàn dùng bữa trưa tại nhà hàng, sau đó về khách sạn nhận phòng nghỉ ngơi.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            '14h00: Xe và HDV đưa đoàn đi tham quan Châu Âu thu nhỏ - GRAND WORLD'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Tự do check-in khám phá Grand World Phú Quốc – thiên đường mua sắm, ẩm thực, vui chơi giải trí “không ngủ” tập hợp nhiều nét tinh hoa kiến trúc thế giới, nhiều show diễn thú vị.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khám phá Công viên Urban Park: Quy tụ nhiều tác phẩm nghệ thuật độc đáo, mang đậm nét lãng mạn, cổ điển, đậm chất Ý.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Dạo thuyền Du ngoạn dòng sông Venice (Ý) (chi phí tự túc)'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu phố đèn lồng Shanghai: Tọa lạc ngay cổng vào dự án, lấy cảm hứng thiết kế từ những con phố sầm uất của Thượng Hải, khu phố như một China Town thu nhỏ trên đảo Ngọc trù phú.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu mái vòm ánh sáng đổi màu độc đáo phong cách Clarke Quay.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu phố đi bộ với chợ đêm dân gian lấy ý tưởng từ khu Asiatique tại Thái Lan, khu phố đi bộ Mallorca phục vụ cho những nhu cầu vui chơi, giải trí.Tối: Quý khách dùng bữa tối tự túc, nghỉ ngơi tự do và dạo phố biển.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Chú ý: Quý khách nào không đi tham quan, có thể nghỉ ngơi tự do tại khách sạn hoặc ra biển tắm biển tự do. Đến giờ ăn tối, xe và hướng dẫn viên đến đón quý khách đi ăn tối.'),
                        /////////
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset('assets/images/t2.png'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            '07h00: Quý khách dùng điểm tâm sáng tại khách sạn. Sau đó xe đưa đoàn đi về phía Nam Đảo Phú Quốc để tham quan:'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu du lịch Hòn Thơm: Quý khách đi cáp treo vượt biển dài nhất Châu Á sang đảo để cùng tắm biển và chiêm ngưỡng vẻ đẹp hoang sơ của biển đảo từ độ cao hơn 100 mét. Tại đảo du khách tha hồ tắm biển và vui chơi tại khu công viên nước (đã được bao gồm). Là hạng mục đầu tiên và quan trọng nhất trong quần thể vui chơi giải trí biển Sun World Hon Thom Nature Park mà Tập đoàn Sun Group đang xây dựng tại Nam đảo, cáp treo Hòn Thơm có tổng chiều dài hơn 7.899m, nối từ thị trấn An Thới qua các đảo Hòn Rỏi, Hòn Dừa tới Hòn Thơm, đem đến cho du lịch Phú Quốc một sản phẩm mới lạ, quy mô và độc đáo.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu du lịch Hòn Thơm: Quý khách đi cáp treo vượt biển dài nhất Châu Á sang đảo để cùng tắm biển và chiêm ngưỡng vẻ đẹp hoang sơ của biển đảo từ độ cao hơn 100 mét. Tại đảo du khách tha hồ tắm biển và vui chơi tại khu công viên nước (đã được bao gồm). Là hạng mục đầu tiên và quan trọng nhất trong quần thể vui chơi giải trí biển Sun World Hon Thom Nature Park mà Tập đoàn Sun Group đang xây dựng tại Nam đảo, cáp treo Hòn Thơm có tổng chiều dài hơn 7.899m, nối từ thị trấn An Thới qua các đảo Hòn Rỏi, Hòn Dừa tới Hòn Thơm, đem đến cho du lịch Phú Quốc một sản phẩm mới lạ, quy mô và độc đáo. 12h00: Đoàn dùng bữa trưa Buffet tại nhà hàng trong khu ẩm thực tại KDL Hòn Thơm'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            '15h00: Quý khách trở về lại đất liền, xe và Hướng dẫn viên đưa đoàn:'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Tắm biển tại Bãi Sao: Một trong những bãi biển với làn nước xanh biếc, bờ cát trắng mịn nổi tiếng tại Phú Quốc. Đến Bãi Sao, Quý khách tự do nghỉ ngơi, vui chơi và tắm biển (phí tắm nước ngọt + võng nằm: chi phí tự túc).'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Thiền Viện Trúc Lâm Hộ Quốc: Đây là ngôi thiền viện được xây dựng và thờ cúng theo mô hình kiến trúc riêng biệt của phái thiền Trúc Lâm nước ta. Với khuôn viên rộng lớn và bên trong có thờ cúng nhiều tượng phật, các vị la hán đã tạo nên vẻ trang nghiêm cho ngôi thiền viện này. Quý khách tham quan chụp hình cảnh biển và chiêm bái phật Thích Ca cùng tổ sư Đạt Ma. (Trong trường hợp có mưa to, đường xá, giao thông không thuận tiện trong việc xe ra vào đường nhỏ chật hẹp, nguy hiểm thì chúng tôi sẽ bỏ qua địa điểm tham quan này – kính mong Quý khách thông cảm). 18h00: Xe đưa đoàn đến nhà hàng dùng bữa tối.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Tối: Quý khách tự do dạo chợ đêm Dương Đông hoặc có thể đặt tour câu mực đêm (chi phí tự túc 300.000 VNĐ/vé, có ăn tối cháo mực) để tận hưởng trọn vẹn hơn vẻ đẹp Phú Quốc về đêm.'),

                        ///////
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset('assets/images/t3.jpg'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            '07h00: Quý khách dùng điểm tâm sáng tại khách sạn. Sau đó tắm biển tự do hoặc nghỉ ngơi tự do tại khách sạn. '),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Trưa: Đoàn làm thủ tục trả phòng. Sau đó đến nhà hàng dùng bữa trưa sau đó tham quan:'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Cơ sở chế biến nước mắm Phú Quốc: Quý khách tham quan nhà thùng lâu đời và tìm hiểu về quy trình chế biến nước mắm cá cơm truyền thống lâu đời của người dân Phú Quốc. Quý khách có thể mua về làm quà tặng hoặc dùng cho việc nấu ăn trong gia đình hằng ngày.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Khu nuôi cấy Ngọc Trai - một trong những nét đặc trưng mà du khách không thể bỏ qua khi đến với Phú Quốc. Quý khách được tìm hiểu về quy trình nuôi cấy ngọc trai, được tận mắt chứng kiến quá trình mỗ trai lấy ngọc và có cơ hội sỡ hữu những sản phẩm ngọc trai chính hiệu mang đến sự may mắn và thịnh vượng.'),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Chiều: Xe và HDV đưa Quý khách ra sân bay bay về lại TPHCM trên chuyến bay VJ332 17:55. Kết thúc chương trình Phú Quốc 3 ngày 2 đêm và hẹn gặp lại du khách trong chuyến hành trình tiếp theo.'),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 1,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RatingScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Xem bình luận',
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              )),
            ],
          ),
          MoveableButton(),
        ],
      )),
    );
  }
}

class Comment {
  final String text;
  final String author;
  final int rating;

  Comment({required this.text, required this.author, required this.rating});
}

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RatingScreenState();
  }
}

class _RatingScreenState extends State<RatingScreen> {
  final List<Comment> _comments = [
    Comment(text: 'Chuyến đi bất ổn', author: 'Lê Công Thịnh', rating: 4),
    Comment(text: 'Dịch vụ thật chu đáo', author: 'Minh Quân', rating: 3),
    Comment(text: 'Trên cả tuyệt vời', author: 'Tuấn Linh Phan', rating: 5),
    Comment(
        text: 'Chuyến đi thật tuyệt vời', author: 'Trần Thới Long', rating: 2),
  ];

  int _rating = 0;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bình luận và đánh giá'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (context, index) {
                final comment = _comments[index];
                return ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(comment.text),
                      const SizedBox(width: 8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                            comment.rating,
                            (i) => const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 244, 220, 5),
                                )).toList(),
                      ),
                    ],
                  ),
                  subtitle: Text(comment.author),
                );
              },
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (i) => InkWell(
                      child: Icon(
                        i < _rating ? Icons.star : Icons.star_border,
                        color: Colors.yellow,
                      ),
                      onTap: () {
                        setState(() {
                          _rating = i + 1;
                        });
                      },
                    ),
                  ).toList(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.message),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        decoration: const InputDecoration(
                          hintText: 'Thêm bình luận...',
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _comments.add(Comment(
                                text: _textEditingController.text,
                                author: 'Tuấn Linh',
                                rating: _rating));
                            _textEditingController.clear();
                            _rating = 0;
                          });
                        },
                        icon: const Icon(Icons.send)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
