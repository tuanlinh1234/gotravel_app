// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:doantn/modules/homes/homescreen.dart';
// import 'package:doantn/modules/homes/lienhe.dart';
// import 'package:doantn/modules/homes/screen_news.dart';
// import 'package:doantn/modules/homes/thongtin.dart';
// import 'package:doantn/modules/homes/tour.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:ionicons/ionicons.dart';
// import '../../components/textfield/textfield_search.dart';
// import '../../constants/my_colors.dart';
// import '../../constants/text_style.dart';

// class Detail extends StatefulWidget {
//   const Detail({Key? key}) : super(key: key);

//   @override
//   DetailState createState() => DetailState();
// }

// class DetailState extends State<Detail> {
//   @override
//   Widget build(BuildContext context) {
//     final adult = TextEditingController();
//     final children = TextEditingController();
//     int value = 0;
//     TextEditingController _date = TextEditingController();
//     return Scaffold(
//       body: SafeArea(
//           child: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 157, 203, 240),
//                   Color.fromARGB(255, 232, 178, 240)
//                 ],
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     child: Image.asset(
//                       'assets/images/dulich.jpg',
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 10, top: 10),
//                     child: InkWell(
//                       child: Padding(
//                         padding: EdgeInsets.only(right: 350),
//                         child: Icon(
//                           Ionicons.arrow_back_outline,
//                           size: 30,
//                         ),
//                       ),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (BuildContext context) => HomeScreen(),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 child: Text(
//                   'Số lượng người',
//                   style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 70),
//                 child: Row(
//                   children: [
//                     Text('Số người lớn'),
//                     SizedBox(
//                       width: 25,
//                     ),
//                     InkWell(
//                       child: Icon(Ionicons.add_outline),
//                       onTap: () {
//                         adult.text = value.toString();
//                         adult.text = '${value + 1}';
//                       },
//                     ),
//                     RawKeyboardListener(
//                       focusNode: FocusNode(),
//                       child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: TextFormField(
//                           controller: adult,
//                           onTap: () {},
//                           onSaved: (p3) {},
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(2),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                           textAlign: TextAlign.center,
//                           style: bodyTextPrimary.copyWith(
//                             color: MyColors.black,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 20,
//                           ),
//                           showCursor: false,
//                           decoration: InputDecoration(
//                             contentPadding: const EdgeInsets.only(
//                                 top: 12, bottom: 12, left: 2.6),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                             filled: true,
//                             fillColor: MyColors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       child: Icon(Ionicons.remove_outline),
//                       onTap: () {
//                         setState(() {
//                           adult.text = value.toString();
//                           adult.text = '${value - 1}';
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 70),
//                 child: Row(
//                   children: [
//                     Text('Số trẻ em'),
//                     SizedBox(
//                       width: 45,
//                     ),
//                     InkWell(
//                       child: Icon(Ionicons.add_outline),
//                       onTap: () {
//                         children.text = value.toString();
//                         children.text = '${value + 1}';
//                       },
//                     ),
//                     RawKeyboardListener(
//                       focusNode: FocusNode(),
//                       child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: TextFormField(
//                           controller: children,
//                           onTap: () {},
//                           onSaved: (p3) {},
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(2),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                           textAlign: TextAlign.center,
//                           style: bodyTextPrimary.copyWith(
//                             color: MyColors.black,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 20,
//                           ),
//                           showCursor: false,
//                           decoration: InputDecoration(
//                             contentPadding: const EdgeInsets.only(
//                                 top: 12, bottom: 12, left: 2.6),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                             filled: true,
//                             fillColor: MyColors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       child: Icon(Ionicons.remove_outline),
//                       onTap: () {
//                         setState(() {
//                           children.text = value.toString();
//                           children.text = '${value - 1}';
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
              // Text(
              //   'Giá vé',
              //   style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.blueAccent),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Table(
              //     border: TableBorder.all(),
              //     children: [
              //       TableRow(
              //         children: [
              //           Text(
              //             'Độ tuổi',
              //             style: TextStyle(
              //                 fontSize: 15, fontWeight: FontWeight.bold),
              //           ),
              //           Text(
              //             'Giá vé',
              //             style: TextStyle(
              //                 fontSize: 15, fontWeight: FontWeight.bold),
              //           ),
              //         ],
              //       ),
              //       TableRow(
              //         children: [
              //           Text('Trên 14'),
              //           Text('2.500.000 vnd'),
              //         ],
              //       ),
              //       TableRow(
              //         children: [
              //           Text('Dưới 14 tuổi'),
              //           Text('1.200.000 vnd'),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
//               SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) => Contact(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'Đặt tour',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   )),
//             ],
//           )
//         ],
//       )),
//     );
//   }
// }
