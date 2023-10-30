import 'package:flutter/material.dart';

import '../../shared/theme/styles.dart';
import '../../shared/widgets/customTextField.dart';
import '../../shared/widgets/smallbutton.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Education info",
                style: largeStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                "Fill in the data for profile. It will take a couple of minutes.",
                style: miniStyle,
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                  text: "School/University", icon: Icon(Icons.house)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(text: "Degree", icon: Icon(Icons.school)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Field of Study", icon: Icon(Icons.menu_book)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                text: "Start Date",
                icon: Icon(Icons.calendar_month),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "End Date", icon: Icon(Icons.calendar_month)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(text: "Percentage", icon: Icon(Icons.percent)),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallButtonWhite(title: "Back"),
                  SmallButtonBlue(title: "Next")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
