import 'package:flutter/material.dart';
import 'package:hims/shared/theme/colors.dart';

import '../../shared/theme/styles.dart';

class SilverTextfield extends StatelessWidget {
  final String text;
  const SilverTextfield({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        hintText: text,
        filled: true,
        fillColor: Colors.grey.withOpacity(0.4),
        hintStyle: smallStyle.copyWith(),
        // prefixIcon: prefixIcon: icon,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(208, 213, 221, 1)),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
