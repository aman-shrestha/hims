import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/dashboardView.dart';
import 'package:hims/features/userDetail/profileInfo.dart';
import 'package:hims/features/userDetail/UserDetailTabView.dart';
import 'package:hims/features/signup/otpView.dart';
import 'package:hims/features/signup/signup.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'routes/app_router.dart';

void main() {
  runApp(ResponsiveSizer(builder: (context, orientation, screenType) {
    return DashboardView();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
