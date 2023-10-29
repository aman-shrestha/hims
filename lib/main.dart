import 'package:flutter/material.dart';
import 'package:hims/features/register/profileInfo.dart';
import 'package:hims/features/register/registerTabView.dart';
import 'package:hims/features/signup/otpView.dart';
import 'package:hims/features/signup/signup.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(ResponsiveSizer(builder: (context, orientation, screenType) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegisterTabView(),
    );
  }
}
