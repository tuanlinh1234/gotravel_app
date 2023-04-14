import 'package:doantn/modules/homes/thongtin.dart';
import 'package:doantn/modules/homes/tour.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<Contact> {
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
              Stack(
                children: [
                  Image.asset(
                    'assets/images/dulich.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: InkWell(
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
                            builder: (BuildContext context) => const Detail(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Thông tin liên hệ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Họ tên",
                            hintStyle: const TextStyle(
                                fontFamily: 'Gothic',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color(0xffC6CCD3)),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xffC6CCD3), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xff858A90), width: 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Số điện thoại",
                            hintStyle: const TextStyle(
                                fontFamily: 'Gothic',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color(0xffC6CCD3)),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xffC6CCD3), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xff858A90), width: 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: const TextStyle(
                                fontFamily: 'Gothic',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color(0xffC6CCD3)),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xffC6CCD3), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xff858A90), width: 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Địa chỉ",
                            hintStyle: const TextStyle(
                                fontFamily: 'Gothic',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color(0xffC6CCD3)),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xffC6CCD3), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xff858A90), width: 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => const BookTour(),
                                ),
                              );
                            },
                            child: const Text(
                              'Đặt tour',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
