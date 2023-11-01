import 'package:flutter/material.dart';
import 'package:hims/features/notice/noticeAll.dart';
import 'package:hims/features/notice/noticeLatestNews.dart';
import 'package:hims/features/notice/noticePress.dart';

import '../../shared/theme/colors.dart';

class NoticeTabBar extends StatelessWidget {
  const NoticeTabBar({super.key});

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
                  text: "All",
                ),
                Tab(
                  text: "Latest News",
                ),
                Tab(
                  text: "Press",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              NoticeAll(),
              NoticeLatestNews(),
              NoticePress(),
            ]),
          )
        ],
      ),
    );
  }
}
