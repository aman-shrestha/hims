import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/styles.dart';

class VitalsBodyTemperature extends StatelessWidget {
  const VitalsBodyTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Body Temperature",
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
            children: [],
          ),
        ),
      ),
    );
  }
}
