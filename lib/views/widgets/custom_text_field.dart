import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: buildBoarder(),
        enabledBorder: buildBoarder(),
        fillColor: const Color(0XFFFAFAFA),
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0XFFFAFAFA),
      ),
    );
  }
}
