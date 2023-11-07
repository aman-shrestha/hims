import 'package:flutter/material.dart';
import 'package:hims/features/jobs/submitApplication.dart';

import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

import '../../shared/widgets/profileBar.dart';
import '../../shared/widgets/smallbutton.dart';

class ApplyVacancy extends StatelessWidget {
  var title = "Surgeon";

  var date = "14 Sep 2023";
  var jobDescription =
      "Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.Nunc vulputate libero et velit interdum, ac aliquet odio mattis.";
  ApplyVacancy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Apply Vacancy",
          style: TextStyle(color: AppColors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        foregroundColor: AppColors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage3.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: normalStyle.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Deadline (" + date + ")"),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SubmitApplication()));
                            },
                            child: SmallButtonBlue(title: "Apply Now")),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Job Description",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(jobDescription),
                      ],
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
