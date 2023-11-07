import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/jobs/applyVacancy.dart';
import 'package:hims/features/documents/documentsTabsViews/documentsCard.dart';
import 'package:hims/features/notice/noticeTabsVIews/onClickNotice.dart';

import 'noticeCard.dart';

class NoticeAll extends StatelessWidget {
  List title = [
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
    "SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।.SEDP मा सहभागी मनोनयन गरी पठाउने सम्बन्धमा।",
  ];
  List subtitle = [
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
    "Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.Horem ipsum dolor sit amet, consectetur adipiscin. Horem ipsum dolor sit amet, consectetur adipiscin.",
  ];
  List date = [
    "2023-09-20",
    "2023-09-20",
    "2023-09-20",
    "2023-09-20",
    "2023-09-20",
    "2023-09-20",
  ];
  NoticeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Get.to(() => OnClickNotice());
          },
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: title.length,
            itemBuilder: (BuildContext context, index) => NoticeCard(
                title: title[index],
                subtitle: subtitle[index],
                date: date[index]),
          ),
        ),
      ),
    );
  }
}
