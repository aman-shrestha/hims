import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/medications/medicationsCard.dart';
import 'package:hims/features/dashboard/medications/uploadDocument.dart';
import 'package:hims/shared/theme/styles.dart';

class Medications extends StatelessWidget {
  List title = [
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
    "Sugar",
  ];
  List subtitle = [
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
    "Lab Report",
  ];
  List date = [
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
    "Aug 20,2022",
  ];
  Medications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Attachments",
              style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UploadDocument()));
              },
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: title.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) => MedicationCard(
                    title: title[index],
                    subtitle: subtitle[index],
                    date: date[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
