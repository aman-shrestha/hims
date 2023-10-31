import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class MedicationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  const MedicationCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            SvgPicture.asset("assets/images/sugar.svg"),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: normalStyle.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  subtitle,
                  style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400, color: AppColors.gray),
                ),
                Text(
                  date,
                  style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray.withOpacity(0.9)),
                ),
              ],
            ),
            Spacer(),
            Text(
              "View",
              style: smallStyle.copyWith(color: AppColors.blue),
            )
          ],
        ),
      ),
    );
  }
}
