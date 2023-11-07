import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class JobsCard extends StatelessWidget {
  final String title;
  final String location;
  final String hospital;
  const JobsCard(
      {super.key,
      required this.title,
      required this.location,
      required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/images/bags.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: mediumStyle,
                ),
                Spacer(),
                SvgPicture.asset("assets/images/partTime.svg")
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/images/location.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  location,
                  style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400, color: AppColors.gray),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/images/hospital.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  hospital,
                  style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400, color: AppColors.gray),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
