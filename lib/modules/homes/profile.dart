import 'package:doantn/components/textfield/login/text_field_email.dart';
import 'package:doantn/modules/homes/test.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../components/textfield/birthday.dart';
import '../../components/textfield/sex.dart';
import '../../components/textfield/textfield_addess.dart';
import '../../components/textfield/textfield_name.dart';
import '../../components/textfield/textfield_phone.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

enum Gender { male, female }

class _ProfileState extends State<Profile> {
  Gender? _selectedGender = Gender.male;
  List<Widget> _buildGenderOptions() {
    return [
      ListTile(
        title: const Text('Nam'),
        leading: Radio(
          value: Gender.male,
          groupValue: _selectedGender,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
        ),
      ),
      ListTile(
        title: const Text('Nữ'),
        leading: Radio(
          value: Gender.female,
          groupValue: _selectedGender,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController date = TextEditingController();

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const TextFieldEmail(),
            const SizedBox(
              height: 10,
            ),
            const MyTextFieldName(),
            const SizedBox(
              height: 10,
            ),
            BirthDateField(),
            const SizedBox(
              height: 10,
            ),
            const MyTextFieldPhone(),
            const SizedBox(
              height: 10,
            ),
            const MyTextFielAddres(),
            const SizedBox(
              height: 10,
            ),
            GenderField(
              initialValue: '',
              onChanged: (String value) {},
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Cập nhật thông tin'))
          ],
        ),
      ),
    ));
  }
}
