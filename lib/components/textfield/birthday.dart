// import 'package:flutter/material.dart';

// class BirthDateField extends StatefulWidget {
//   @override
//   _BirthDateFieldState createState() => _BirthDateFieldState();
// }

// class _BirthDateFieldState extends State<BirthDateField> {
//   late int _day;
//   late int _month;
//   late int _year;

//   @override
//   void initState() {
//     super.initState();
//     _day = 1;
//     _month = 1;
//     _year = DateTime.now().year;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: TextField(
//             readOnly: true,
//             controller: TextEditingController(
//               text: '${_day.toString().padLeft(2, '0')}/'
//                   '${_month.toString().padLeft(2, '0')}/$_year',
//             ),
//             decoration: InputDecoration(labelText: 'Birth Date'),
//             onTap: () {
//               showModalBottomSheet(
//                   context: context,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//                   ),
//                   builder: (BuildContext context) {
//                     return buildBottomSheet();
//                   });
//             },
//           ),
//         ),
//         IconButton(
//           icon: Icon(Icons.arrow_drop_down),
//           onPressed: () {
//             showModalBottomSheet(
//                 context: context,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//                 ),
//                 builder: (BuildContext context) {
//                   return buildBottomSheet();
//                 });
//           },
//         ),
//       ],
//     );
//   }

//   Widget buildBottomSheet() {
//     final days = List.generate(31, (index) => index + 1);
//     final months = List.generate(12, (index) => index + 1);
//     final years = List.generate(100, (index) => _year - index);

//     return Container(
//       height: 250,
//       child: Column(
//         children: [
//           buildRowDropdown('Day', days, (value) => _day = value),
//           buildRowDropdown('Month', months, (value) => _month = value),
//           buildRowDropdown('Year', years, (value) => _year = value),
//           buildButtonOk(),
//         ],
//       ),
//     );
//   }

//   Widget buildRowDropdown(String label, List<int> items, ValueChanged<int> onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(label),
//           ),
//           DropdownButton<int>(
//             value: items.first,
//             items: items
//                 .map<DropdownMenuItem<int>>(
//                   (int value) => DropdownMenuItem<int>(
//                     value: value,
//                     child: Text(value.toString()),
//                   ),
//                 )
//                 .toList(),
//             onChanged: (value) {
//               onChanged(value!);
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildButtonOk() {
//     return Container(
//       margin: EdgeInsets.only(top: 16),
//       child: ElevatedButton(
//         child: Text('OK'),
//         onPressed: () {
//           Navigator.pop(context);
//           setState(() {});
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BirthDateField extends StatefulWidget {
  const BirthDateField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BirthDateFieldState createState() => _BirthDateFieldState();
}

class _BirthDateFieldState extends State<BirthDateField> {
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _dateController,
      readOnly: true,
      onTap: () => _selectDate(context),
      // decoration: InputDecoration(
      //   labelText: 'Birth Date',
      //   hintText: 'MM/DD/YYYY',
      // ),
      decoration: InputDecoration(
        hintText: "MM/DD/YYYY*",
        hintStyle: const TextStyle(
            fontFamily: 'fontmain',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 1,
            color: Color(0xffC6CCD3)),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: const Icon(
          Icons.date_range_outlined,
        ),
        suffixIcon: const Icon(Icons.arrow_drop_down),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffC6CCD3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xff858A90), width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        final formattedDate = '${picked.month}/${picked.day}/${picked.year}';
        _dateController.text = formattedDate;
      });
    }
  }
}
