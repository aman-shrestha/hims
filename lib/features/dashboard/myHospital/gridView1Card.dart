import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class GridView1Card extends StatelessWidget {
  final String image;
  final String title;
  final String no;
  const GridView1Card(
      {super.key, required this.image, required this.title, required this.no});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    no,
                    style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: miniStyle.copyWith(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
