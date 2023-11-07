import 'package:flutter/material.dart';
import 'package:hims/features/profile/profileOnClickView/appreciation.dart';
import 'package:hims/features/profile/profileOnClickView/educationCard.dart';
import 'package:hims/features/profile/profileOnClickView/personalInfoCard.dart';
import 'package:hims/features/profile/profileOnClickView/contactDetailsCard.dart';
import 'package:hims/features/profile/profileOnClickView/workExperienceCard.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class Profile extends StatelessWidget {
  // List icon = [
  //   "assets/images/personalInfo.svg",
  //   "assets/images/contactDetails.svg",
  //   "assets/images/workExperience.svg",
  //   "assets/images/education.svg",
  //   "assets/images/appreciation.svg",
  // ];
  // List title = [
  //   "Personal Info",
  //   "Contact Details",
  //   "Work Experience",
  //   "Education",
  //   "Appreciation",
  // ];
  List<String> personalInfoTitle = [
    "Insurance Number",
    "Location",
    "Experience",
    "Birth Date",
    "Nationality",
    "Country",
    "Marital Status",
  ];
  List<String> personalInfoSubtitle = [
    "1234",
    "Nepal",
    "1 year ",
    "01NOV, 2000",
    "Nepali",
    "Nepali",
    "-",
  ];
  List<String> contactTitle = [
    "Phone Number",
    "Email Address",
  ];
  List<String> contactSubtitle = [
    "123456789",
    "abc@gmail.com",
  ];
  List<String> workExperienceTitle = [
    "Manager",
    "Designer",
  ];
  List<String> workExperienceSubtitle = [
    "Amazon Inc Jan,2015",
    "Amazon Inc Jan,2015",
  ];
  List<String> educationTitle = [
    "Information Technology",
  ];
  List<String> educationSubtitle = [
    "University of Oxford",
  ];
  List<String> appreciationTitle = [
    "Information Technology",
  ];
  List<String> appreciationSubtitle = [
    "University of Oxford",
  ];
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage2.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                    ),
                    Positioned(
                      bottom: 80,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blue),
                          ),
                          Text(
                            "Sushma Tamrakar",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "MMS Doctor",
                            style: mediumStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                PersonalInfoCard(
                  icon: "assets/images/personalInfo.svg",
                  title: "Personal Info",
                  personalInfoTitle: personalInfoTitle,
                  personalInfoSubtitle: personalInfoSubtitle,
                ),
                SizedBox(
                  height: 20,
                ),
                ContactDetailsCard(
                  icon: "assets/images/contactDetails.svg",
                  title: "Contact Details",
                  contactTitle: contactTitle,
                  contactSubtitle: contactSubtitle,
                ),
                SizedBox(
                  height: 20,
                ),
                WorkExperienceCard(
                  icon: "assets/images/workExperience.svg",
                  title: "Work Experience",
                  workExperienceTitle: workExperienceTitle,
                  workExperienceSubtitle: workExperienceSubtitle,
                ),
                SizedBox(
                  height: 20,
                ),
                EducatoinCard(
                  icon: "assets/images/education.svg",
                  title: "Education",
                  educationTitle: educationTitle,
                  educationSubtitle: educationSubtitle,
                ),
                SizedBox(
                  height: 20,
                ),
                AppreciationCard(
                    icon: "assets/images/appreciation.svg",
                    title: "Appreciation",
                    appreciationTitle: appreciationTitle,
                    appreciationSubtitle: appreciationSubtitle)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
