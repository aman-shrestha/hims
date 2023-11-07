import 'package:flutter/material.dart';
import 'package:hims/features/documents/documentsTabsViews/onClickDocuments/ButtonTOC.dart';
import 'package:hims/features/documents/documentsTabsViews/onClickDocuments/onClickSummaryCard.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/widgets/profileBar.dart';

class OnClickSummary extends StatelessWidget {
  const OnClickSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ProfileBar(
          title: "Summary",
          leading: false,
          color: AppColors.blue,
        
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage3.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ButtonTOC(text: "Table of Content"),
              SizedBox(
                height: 16,
              ),
              OnClickSummaryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
