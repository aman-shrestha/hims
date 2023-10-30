import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/styles.dart';

import '../../../shared/theme/colors.dart';

class VitalsContainer extends StatelessWidget {
  const VitalsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      color: AppColors.lightgreen,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "Heart Rate",
                  style: miniStyle.copyWith(color: AppColors.gray),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "90",
                      style: biggStyle,
                    ),
                    Text("bpm"),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            SvgPicture.asset("assets/images/heartRate.svg")
          ],
        ),
      ),
    );
  }
}
