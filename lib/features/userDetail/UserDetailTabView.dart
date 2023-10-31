import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hims/features/userDetail/educationInfo.dart';
import 'package:hims/features/userDetail/experienceInfo.dart';
import 'package:hims/features/userDetail/profileInfo.dart';

@RoutePage()
class UserDetailTabView extends StatelessWidget {
  const UserDetailTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/himsBackgroundImage.png"))),
        child: DefaultTabController(
          length: 3,
          child: Padding(
            // padding: const EdgeInsets.all(8.0),
            padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_literals_to_create_immutables
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Color(0xffD0D5DD),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelColor: Colors.black,
                    dividerColor: Colors.blue,
                    // ignore: prefer_const_literals_to_create_immutables
                    tabs: [
                      Tab(
                        text: "A",
                      ),
                      Tab(
                        text: "B",
                      ),
                      Tab(
                        text: "C",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(children: [
                    ProfileInfo(),
                    EducationInfo(),
                    ExperienceInfo(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
