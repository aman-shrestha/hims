import 'package:flutter/material.dart';
import 'package:hims/shared/theme/styles.dart';

class SmallButtonWhite extends StatelessWidget {
  final String title;
  const SmallButtonWhite({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 111,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.blue),
      ),
      child: Center(
        child: Text(
          title,
          style: miniStyle.copyWith(
              fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}

class SmallButtonBlue extends StatelessWidget {
  final String title;
  const SmallButtonBlue({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 111,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color.fromRGBO(38, 92, 192, 1),
      ),
      child: Center(
        child: Text(
          title,
          style: miniStyle.copyWith(
              fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
