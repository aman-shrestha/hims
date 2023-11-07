import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
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
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "",
        ),
      ),
      body: Container(
        // height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: [
                Image.asset("assets/images/notice.png"),
                Text(
                  "SignUp",
                  style: largeStyle.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your credentials to login to your account.",
                  style: smallStyle.copyWith(color: AppColors.gray),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(text: "First Name", icon: Icon(Icons.message)),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(text: "Last Name", icon: Icon(Icons.message)),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(text: "Email", icon: Icon(Icons.message)),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(text: "Phone Number", icon: Icon(Icons.phone)),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(text: "Profession", icon: Icon(Icons.badge)),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  text: "Password",
                  icon: Icon(Icons.lock),
                  isObsecure: true,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  text: "Confirm Password",
                  icon: Icon(Icons.lock),
                  isObsecure: true,
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => OTPView());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const OTPView()));
                    // AutoRouter.of(context).push(OTPView());
                  },
                  child: ButtonLarge(text: "Signup"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
