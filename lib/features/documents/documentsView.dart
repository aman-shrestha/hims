import 'package:flutter/material.dart';
import 'package:hims/features/documents/documentsTabBar.dart';
import 'package:hims/shared/theme/colors.dart';

import '../../shared/widgets/profileBar.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ProfileBar(
          title: "Guidelines",
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
              Expanded(child: DocumentsTabBar()),
            ],
          ),
        ),
      ),
    );
  }
}
