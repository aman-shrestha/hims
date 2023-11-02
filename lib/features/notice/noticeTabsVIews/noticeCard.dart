import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class NoticeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  const NoticeCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
        child: Row(
          children: [
            Image.asset(
              "assets/images/notice.png",
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(7, 45, 75, 1)),
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.w400, color: AppColors.gray),
                  ),
                  Text(
                    "Deadline: " + date,
                    style: smallStyle.copyWith(fontWeight: FontWeight.w500),
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
