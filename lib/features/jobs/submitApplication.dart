import 'package:flutter/material.dart';
import 'package:hims/features/jobs/silverTextfield.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';
import 'package:hims/shared/widgets/buttonLarge.dart';
import 'package:hims/shared/widgets/customTextField.dart';

class SubmitApplication extends StatelessWidget {
  const SubmitApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Submit Application",
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
              image: AssetImage("assets/images/himsBackgroundImage2.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 44),
                  child: Column(
                    children: [
                      Text(
                        "Your Details",
                        style:
                            mediumStyle.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SilverTextfield(text: "text"),
                      SizedBox(
                        height: 16,
                      ),
                      SilverTextfield(text: "text"),
                      SizedBox(
                        height: 16,
                      ),
                      SilverTextfield(text: "text"),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                          "SWITCH//Accept  all the privacy policy of NPDP Care"),
                      SizedBox(
                        height: 50,
                      ),
                      ButtonLarge(text: "Submit Application")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
