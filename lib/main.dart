import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/dashboard/dashboardView.dart';
import 'package:hims/features/login/login.dart';
import 'package:hims/features/jobs/applyVacancy.dart';
import 'package:hims/features/notice/noticeView.dart';
import 'package:hims/features/profile/profile.dart';
import 'package:hims/features/share/shareView.dart';
import 'package:hims/features/userDetail/profileInfo.dart';
import 'package:hims/features/userDetail/UserDetailTabView.dart';
import 'package:hims/features/signup/otpView.dart';
import 'package:hims/features/signup/signup.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'routes/app_router.dart';

void main() {
  runApp(ResponsiveSizer(builder: (context, orientation, screenType) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      // NoticeView(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     AppRouter appRouter = AppRouter();
//     return MaterialApp.router(
//       routerConfig: appRouter.config(),
//     );
//   }
// }
