import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/features/signup/otpReusable.dart';
import 'package:hims/routes/app_router.gr.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';
import 'package:hims/shared/widgets/buttonLarge.dart';
import 'package:otp_text_field/otp_text_field.dart';

@RoutePage()
class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "OTP Verification",
          style: largeStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/OTP.svg",
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Text(
                  "Enter OTP",
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  "An 4 digit code has been sent to your number ",
                  style: miniStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                OTPReusable(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Didn't receive OTP? ",
                    style: miniStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Resend OTP? ",
                    style: miniStyle.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(UserDetailTabView());
                  },
                  child: ButtonLarge(text: "Verify"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
