import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/jobs/applyVacancy.dart';
import 'package:hims/features/jobs/jobsCard.dart';
import 'package:hims/features/jobs/silverTextfield.dart';
import 'package:hims/shared/theme/colors.dart';

import '../../shared/widgets/customTextField.dart';
import '../../shared/widgets/profileBar.dart';

class JobsView extends StatelessWidget {
  List title = [
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
  ];
  List location = [
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
  ];
  List hospital = [
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
    "Published by Bir Hospital",
  ];
  JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ProfileBar(
          title: "Jobs",
          color: AppColors.blue,
          leading: false,
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage3.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  text: "Search jobs",
                  icon: Icon(Icons.search),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ApplyVacancy());
                  },
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: title.length,
                    itemBuilder: (BuildContext context, index) => JobsCard(
                      title: title[index],
                      location: location[index],
                      hospital: hospital[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
