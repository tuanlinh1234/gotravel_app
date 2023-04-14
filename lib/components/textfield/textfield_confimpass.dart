import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class TextFieldConFirm extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isSuffIcon;
  // ignore: prefer_typing_uninitialized_variables
  final focusNode;
  // void Function()? ontap;
  final String? text;
  const TextFieldConFirm(
      {this.text,
      this.focusNode,
      this.controller,
      this.validator,
      this.isSuffIcon = false,
      this.onChanged,
      super.key});

  @override
  State<TextFieldConFirm> createState() => _TextFieldConFirmState();
}

class _TextFieldConFirmState extends State<TextFieldConFirm> {
  bool isShowPass = true;
  String? _checkPass(value) {
    if (value == widget.text) return null;
    return "Mật khẩu không đúng";
  }

  void _onChange(value) {
    if (value == widget.text) {
    } else {

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator ?? _checkPass,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      autocorrect: true,
      obscureText: isShowPass,
      inputFormatters: [
        LengthLimitingTextInputFormatter(
          32,
        ),
      ],
      onChanged: widget.onChanged ?? _onChange,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: "Xác nhận mật khẩu*",
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
        suffixIcon: InkWell(
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
        ),
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
}
