import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class VitalsGridView extends StatelessWidget {
  List image = [
    "assets/images/bloodGroup.svg",
    "assets/images/bodyWeight.svg",
    "assets/images/temperature.svg",
    "assets/images/bloodPressure.svg",
  ];
  List title = [
    "Blood Group",
    "Body Weight",
    "Temperature",
    "Blood Pressure",
  ];
  List no = [
    "O+ve",
    "40",
    "97F",
    "120/80",
  ];
  VitalsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: image.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 8,
          childAspectRatio: 1.2,
          crossAxisSpacing: 8),
      itemBuilder: (BuildContext context, index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SvgPicture.asset(image[index]),
              SizedBox(
                height: 9,
              ),
              Text(
                title[index],
                style: normalStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                no[index],
                style: normalStyle.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.gray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
