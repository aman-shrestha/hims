import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';
import 'package:hims/shared/widgets/customTextField.dart';
import 'package:hims/shared/widgets/smallbutton.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

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
                "Profile info",
                style: largeStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                "Fill in the data for profile. It will take a couple of minutes.",
                style: miniStyle,
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(text: "First Name", icon: Icon(Icons.person)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(text: "Last Name", icon: Icon(Icons.person)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "DOB", icon: Icon(Icons.calendar_month_outlined)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                text: "Gender",
                icon: Icon(Icons.person),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(text: "Contact Number", icon: Icon(Icons.phone)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  text: "Address", icon: Icon(Icons.location_history_outlined)),
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
