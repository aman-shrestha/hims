import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hims/features/signup/otpView.dart';
import 'package:hims/routes/app_router.gr.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';
import 'package:hims/shared/widgets/smallbutton.dart';
import '../../shared/widgets/buttonLarge.dart';
import '../../shared/widgets/customTextField.dart';
import '../../shared/widgets/remember_me_view.dart';

@RoutePage()
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(204, 102, 106, 1),
                  Color.fromRGBO(136, 58, 197, 1),
                  Color.fromRGBO(38, 92, 192, 1),
                ]),
          ),
        ),
        elevation: 0,
        title: Text(
          "Signup",
          style: largeStyle,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(38, 92, 192, 1),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: Column(
                children: [
                  Text(
                    "Enter your credentials to login to your account.",
                    style: smallStyle.copyWith(color: AppColors.gray),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  CustomTextField(
                      text: "Email Address", icon: Icon(Icons.email)),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                      text: "Phone Number", icon: Icon(Icons.phone)),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(text: "Profession", icon: Icon(Icons.badge)),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    text: "Password",
                    icon: Icon(Icons.password),
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RememberMeView(),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OTPView()));
                      // AutoRouter.of(context).push(OTPView());
                    },
                    child: ButtonLarge(text: "Log In "),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: smallStyle.copyWith(color: AppColors.gray),
                      ),
                      Text(
                        " Sign Up",
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
