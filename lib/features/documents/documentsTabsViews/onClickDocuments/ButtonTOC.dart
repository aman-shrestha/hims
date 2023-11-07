import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/styles.dart';

class ButtonTOC extends StatelessWidget {
  final String text;
  const ButtonTOC({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 351,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(38, 92, 192, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(90, 8, 16, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: normalStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            SvgPicture.asset("assets/images/menu.svg")
          ],
        ),
      ),
    );
  }
}
