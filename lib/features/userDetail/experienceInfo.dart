import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/dashboardView.dart';

import '../../shared/theme/styles.dart';
import '../../shared/widgets/customTextField.dart';
import '../../shared/widgets/smallbutton.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

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
                "Experience info",
                style: largeStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                "Fill in the data for profile. It will take a couple of minutes.",
                style: miniStyle,
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(text: "Title of Role", icon: Icon(Icons.person)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Employment Type", icon: Icon(Icons.person)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Company Name", icon: Icon(Icons.location_city)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                text: "Location",
                icon: Icon(Icons.location_on),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Location Type", icon: Icon(Icons.location_on)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Start Date", icon: Icon(Icons.calendar_month)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "End Date", icon: Icon(Icons.calendar_month)),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallButtonWhite(title: "Back"),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardView()));
                      },
                      child: SmallButtonBlue(title: "Next"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
