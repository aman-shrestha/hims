import 'package:flutter/material.dart';
import 'package:hims/features/notice/noticeTabBar.dart';
import 'package:hims/shared/widgets/customTextField.dart';

import '../../shared/widgets/profileBar.dart';

class NoticeView extends StatelessWidget {
  FocusNode textFocus = FocusNode();
  NoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ProfileBar(
          title: "HELLO",
          leading: false,
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage2.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextField(
                text: "Recent announcements, events",
                icon: Icon(Icons.search),
              ),
              Expanded(child: NoticeTabBar()),
            ],
          ),
        ),
      ),
    );
  }
}
