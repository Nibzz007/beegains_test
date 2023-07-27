import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../core/textstyle.dart';

class TextFormWidget extends StatelessWidget {
  static GlobalKey<FormState> textFieldKey = GlobalKey();
  TextFormWidget(
      {super.key,
      this.textEditingController,
      this.labelText,
      required this.keyboardType,
      required this.cursorColor,
      this.onChanged,
      this.validator,
      required this.textAlign,
      this.prefixIcon,
      this.obscureText = false});

  String? labelText;
  TextEditingController? textEditingController;
  final TextInputType keyboardType;
  final Color cursorColor;
  Function(String)? onChanged;
  String? Function(String?)? validator;
  TextAlign textAlign;
  Widget? prefixIcon;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      style: textFieldStyle,
      cursorColor: cursorColor,
      controller: textEditingController,
      keyboardType: keyboardType,
      cursorHeight: 22,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle,
        contentPadding: const EdgeInsets.all(18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: kBlack),
        ),
      ),
    );
  }
}
