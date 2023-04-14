import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class GenderField extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onChanged;

  GenderField({required this.initialValue, required this.onChanged});

  @override
  _GenderFieldState createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  late String _gender;

  @override
  void initState() {
    super.initState();
    _gender = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            readOnly: true,
            controller: TextEditingController(text: _gender),
            decoration: InputDecoration(
              hintText: "Giới tính*",
              hintStyle: const TextStyle(
                  fontFamily: 'Gothic',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Color(0xffC6CCD3)),
              fillColor: const Color(0xffFFFFFF),
              filled: true,
              prefixIcon: const Icon(Ionicons.transgender_outline),
              suffixIcon: const Icon(Icons.arrow_drop_down),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: Color(0xffC6CCD3), width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: Color(0xff858A90), width: 1)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: Color(0xffD92128), width: 1)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: Color(0xffD92128), width: 1)),
            ),
            onTap: () async {
              String result = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    title: const Text('Tấc cả'),
                    children: <Widget>[
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Nam'),
                        child: const Text('Nam'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Nữ'),
                        child: const Text('Nữ'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Khác'),
                        child: const Text('Khác'),
                      ),
                    ],
                  );
                },
              );
              if (result != null) {
                setState(() {
                  _gender = result;
                });
                if (widget.onChanged != null) {
                  widget.onChanged(_gender);
                }
              }
            },
          ),
        ),
        // IconButton(
        //   icon: Icon(Icons.arrow_drop_down),
        //   onPressed: () => _showGenderDialog(context),
        // ),
      ],
    );
  }

  void _showGenderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tấc cả'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Text('Nam'),
                onTap: () {
                  Navigator.of(context).pop('Nam');
                },
              ),
              InkWell(
                child: Text('Nữ'),
                onTap: () {
                  Navigator.of(context).pop('Nữ');
                },
              ),
              InkWell(
                child: Text('Khác'),
                onTap: () {
                  Navigator.of(context).pop('Khác');
                },
              ),
            ],
          ),
        );
      },
    ).then((selected) {
      if (selected != null) {
        setState(() {
          _gender = selected;
        });
        if (widget.onChanged != null) {
          widget.onChanged(_gender);
        }
      }
    });
  }
}
