import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/medications.dart';
import 'package:hims/features/dashboard/myHospital/myHospital.dart';
import 'package:hims/features/dashboard/vitals/vitals.dart';
import 'package:hims/shared/theme/colors.dart';

import '../userDetail/educationInfo.dart';
import '../userDetail/experienceInfo.dart';
import '../userDetail/profileInfo.dart';

class DashboardTabBar extends StatelessWidget {
  const DashboardTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_literals_to_create_immutables
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              indicatorColor: Colors.white,

              unselectedLabelColor: Colors.black,

              // labelColor: Colors.black,
              // dividerColor: Colors.blue,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(
                  text: "My Hospitals",
                ),
                Tab(
                  text: "Vitals",
                ),
                Tab(
                  text: "Medications",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              MyHospital(),
              Vitals(),
              Medications(),
            ]),
          )
        ],
      ),
    );
  }
}
