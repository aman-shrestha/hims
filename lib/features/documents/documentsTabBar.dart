import 'package:flutter/material.dart';
import 'package:hims/features/documents/documentsTabsViews/abbreviations.dart';
import 'package:hims/features/documents/documentsTabsViews/covide.dart';
import 'package:hims/features/documents/documentsTabsViews/methods.dart';
import 'package:hims/features/notice/noticeTabsVIews/noticeAll.dart';
import 'package:hims/features/notice/noticeTabsVIews/noticeLatestNews.dart';
import 'package:hims/features/notice/noticeTabsVIews/noticePress.dart';

import '../../shared/theme/colors.dart';

class DocumentsTabBar extends StatelessWidget {
  const DocumentsTabBar({super.key});

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
                  text: "Covid-19",
                ),
                Tab(
                  text: "Abbreviations",
                ),
                Tab(
                  text: "Methods",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              Covid(),
              Abbreviations(),
              Methods(),
            ]),
          )
        ],
      ),
    );
  }
}
