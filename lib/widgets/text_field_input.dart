import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  // final String hintText;
  final String LabelText;
  final TextInputType textInputType;
  const TextFieldInput(
      {Key? key,
      required this.LabelText,
      required this.textEditingController,
      // required this.hintText,
      required this.textInputType,
      this.isPass = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: LabelText,
        fillColor: Colors.transparent,
        // hintText: hintText,
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
