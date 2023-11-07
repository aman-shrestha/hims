import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/vitals/onClickVitals/onClickVitalsCard/vitalsBodyPressureCard.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/styles.dart';

class VitalsBodyPressure extends StatelessWidget {
  const VitalsBodyPressure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Body Pressure",
          style: normalStyle.copyWith(
            color: AppColors.blue,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        foregroundColor: AppColors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/himsBackgroundImage2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [VitalsBodyPressureCard()],
          ),
        ),
      ),
    );
  }
}
