import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/jobs/applyVacancy.dart';
import 'package:hims/features/documents/documentsTabsViews/documentsCard.dart';
import 'package:hims/features/notice/noticeTabsVIews/onClickNotice.dart';

import 'onClickDocuments/onClickSummary.dart';

class Covid extends StatelessWidget {
  List title = [
    "Drugs to prevent COVID-19: living guideline",
    "Drugs to prevent COVID-19: living guideline",
    "Drugs to prevent COVID-19: living guideline",
    "Drugs to prevent COVID-19: living guideline",
    "Drugs to prevent COVID-19: living guideline",
    "Drugs to prevent COVID-19: living guideline",
  ];
  List subtitle = [
    "World Health Organization (WHO)",
    "World Health Organization (WHO)",
    "World Health Organization (WHO)",
    "World Health Organization (WHO)",
    "World Health Organization (WHO)",
    "World Health Organization (WHO)",
  ];
  List date = [
    "v3.2-3/24/2023",
    "v3.2-3/24/2023",
    "v3.2-3/24/2023",
    "v3.2-3/24/2023",
    "v3.2-3/24/2023",
    "v3.2-3/24/2023",
  ];
  Covid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Get.to(() => OnClickSummary());
          },
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: title.length,
            itemBuilder: (BuildContext context, index) => DocumentsCard(
                title: title[index],
                subtitle: subtitle[index],
                date: date[index]),
          ),
        ),
      ),
    );
  }
}
