import 'package:flutter/material.dart';
import 'package:hims/features/register/educationInfo.dart';
import 'package:hims/features/register/experienceInfo.dart';
import 'package:hims/features/register/profileInfo.dart';

class RegisterTabView extends StatelessWidget {
  const RegisterTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ProfileInfo(),
            EducationInfo(),
            ExperienceInfo(),
          ],
        ),
      ),
    );
  }
}
