import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/login/forgotPassword.dart';
import 'package:hims/features/signup/signup.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/styles.dart';
import '../../shared/widgets/buttonLarge.dart';
import '../../shared/widgets/customTextField.dart';
import '../../shared/widgets/remember_me_view.dart';
import '../buttomnav/buttomnav.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          "Login",
          style: largeStyle,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(38, 92, 192, 1),
        child: Container(
          // height: double.infinity,
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
                      text: "Phone Number", icon: Icon(Icons.phone)),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    text: "Password",
                    icon: Icon(Icons.lock),
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RememberMeView(),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ForgotPassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => BottomNav());
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
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUp());
                        },
                        child: Text(
                          " Sign Up",
                          style: TextStyle(color: AppColors.blue),
                        ),
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
