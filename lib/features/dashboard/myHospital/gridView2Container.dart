import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class GridView2Container extends StatelessWidget {
  final String image;
  final String title;
  const GridView2Container(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 58,
          height: 58,
          child: SvgPicture.asset(image),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: miniStyle,
        ),
      ],
    );
  }
}
