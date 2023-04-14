import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

// ignore: must_be_immutable
class TextFieldPass extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  // ignore: prefer_typing_uninitialized_variables
  final focusNode;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  final String? text;

  bool isPass = false;
  TextFieldPass(
      {this.text,
      this.controller,
      this.validator,
      this.focusNode,
      this.isSuffIcon = false,
      this.onChanged,
      required this.isPass,
      super.key});

  @override
  // ignore: no_logic_in_create_state
  State<TextFieldPass> createState() => _TextFieldPassState(isPass: isPass);
}

class _TextFieldPassState extends State<TextFieldPass> {
  bool isShowPass = true;
  bool isPass;
  _TextFieldPassState({required this.isPass});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: TextInputAction.next,
          autocorrect: true,
          //autofocus: true,
          obscureText: isShowPass,
          inputFormatters: [
            LengthLimitingTextInputFormatter(
              32,
            ),
          ],
          onChanged: widget.onChanged,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: "Mật khẩu*",
            hintStyle: const TextStyle(
                fontFamily: 'fontmain',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 1,
                color: Color(0xffC6CCD3)),
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: SizedBox(
              width: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isShowPass = !isShowPass;
                      });
                    },
                    child: isShowPass
                        ? const Icon(
                            Ionicons.eye_off_outline,
                            color: Color.fromARGB(255, 133, 138, 144),
                          )
                        : const Icon(
                            Ionicons.eye_outline,
                            color: Color.fromARGB(255, 133, 138, 144),
                          ),
                  )
                ],
              ),
            ),
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
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
