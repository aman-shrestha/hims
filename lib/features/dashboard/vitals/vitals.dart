import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/dashboard/vitals/onClickVitals/vitalsBodyWeight.dart';
import 'package:hims/features/dashboard/vitals/vitalsContainer.dart';
import 'package:hims/features/dashboard/vitals/vitalsGridView.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

import 'onClickVitals/vitalsBodyPressure.dart';

class Vitals extends StatelessWidget {
  const Vitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vitals",
              style: largeStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            VitalsContainer(),
            SizedBox(
              height: 28,
            ),
            VitalsGridView(),
          ],
        ),
      ),
    );
  }
}
