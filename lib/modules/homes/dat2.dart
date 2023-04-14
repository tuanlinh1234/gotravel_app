import 'package:doantn/components/textfield/textdield_email.dart';
import 'package:doantn/components/textfield/textfield_phone.dart';
import 'package:flutter/material.dart';

import '../../components/textfield/textfield_addess.dart';
import '../../components/textfield/textfield_name.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  ContactInfoState createState() => ContactInfoState();
}

class ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 30,
            ),
            Text(
              'Thông tin liên hệ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextFieldEmail(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextFieldName(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextFieldPhone(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextFielAddres(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
