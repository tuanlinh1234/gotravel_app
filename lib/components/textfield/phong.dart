import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Phong extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onChanged;

  const Phong({super.key, required this.initialValue, required this.onChanged});

  @override
  // ignore: library_private_types_in_public_api
  _PhongState createState() => _PhongState();
}

class _PhongState extends State<Phong> {
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
              hintText: "Phòng*",
              hintStyle: const TextStyle(
                  fontFamily: 'Gothic',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Color(0xffC6CCD3)),
              fillColor: const Color(0xffFFFFFF),
              filled: true,
              prefixIcon: const Icon(Ionicons.hourglass_outline),
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
                        onPressed: () => Navigator.pop(context, 'Thường'),
                        child: const Text('Thường'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Vip'),
                        child: const Text('Vip'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Giường đôi'),
                        child: const Text('Giường đôi'),
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
      ],
    );
  }

  void _showGenderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Text('Thường'),
                onTap: () {
                  Navigator.of(context).pop('Thường');
                },
              ),
              InkWell(
                child: Text('Vip'),
                onTap: () {
                  Navigator.of(context).pop('Vip');
                },
              ),
              InkWell(
                child: Text('Giường đôi'),
                onTap: () {
                  Navigator.of(context).pop('Giường đôi');
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
