import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/myHospital/myHospitalGridView.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class MyHospital extends StatelessWidget {
  const MyHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bir Hospital",
              style: largeStyle.copyWith(
                  color: AppColors.blue, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            MyHospitalGridView1(),
            Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 20,
                  ),
                  child: Text(
                    "Services",
                    style: normalStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                MyHospitalGridView2(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
