import 'package:flutter/material.dart';
import 'package:hims/shared/theme/styles.dart';

class ButtonLarge extends StatelessWidget {
  final String text;
  const ButtonLarge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 351,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(38, 92, 192, 1),
      ),
      child: Center(
        child: Text(text, style: mediumStyle.copyWith(color: Colors.white)),
      ),
    );
  }
}
