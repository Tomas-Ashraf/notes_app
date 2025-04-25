import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.minLines});
  final String label;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: minLines,
      minLines: minLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        label: Text(label),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
