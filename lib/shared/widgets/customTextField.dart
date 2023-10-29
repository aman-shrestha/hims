import 'package:flutter/material.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Icon icon;
  bool isObsecure;
  CustomTextField(
      {super.key,
      required this.text,
      required this.icon,
      this.isObsecure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: text,
        hintStyle: smallStyle.copyWith(color: AppColors.gray),
        prefixIcon: icon,
        prefixIconColor: AppColors.gray,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(208, 213, 221, 1)),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      obscureText: isObsecure,
    );
  }
}
