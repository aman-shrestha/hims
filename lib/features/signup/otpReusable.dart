
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';

class OTPReusable extends StatelessWidget {
  const OTPReusable({super.key});

  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,

      fieldWidth: MediaQuery.of(context).size.width * 0.1,
      style: TextStyle(fontSize: 17),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      // fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}
