import 'package:flutter/material.dart';
import 'package:hims/shared/widgets/buttonLarge.dart';
import 'package:hims/shared/widgets/customTextField.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset("assets/images/notice.png"),
              Text(
                "Forgot Password",
                style: largeStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email address to get verification code",
                style: smallStyle.copyWith(color: AppColors.gray),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(text: "Email", icon: Icon(Icons.email)),
              SizedBox(
                height: 26,
              ),
              ButtonLarge(text: "Send Verification Code")
            ]),
          ),
        ),
      ),
    );
  }
}
