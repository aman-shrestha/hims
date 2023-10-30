import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/dashboardTabBar.dart';
import 'package:hims/features/dashboard/profileBar.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: ProfileBar(title: "HELLO"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hospital Dashboard",
                  style: normalStyle.copyWith(
                      color: AppColors.gray, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: DashboardTabBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}