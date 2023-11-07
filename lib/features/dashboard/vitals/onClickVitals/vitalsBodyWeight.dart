import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/vitals/onClickVitals/onClickVitalsCard/vitalsBodyWeightCard.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class VitalsBodyWeight extends StatelessWidget {
  const VitalsBodyWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Body Weight",
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
            children: [VitalsBodyWeightCard()],
          ),
        ),
      ),
    );
  }
}
