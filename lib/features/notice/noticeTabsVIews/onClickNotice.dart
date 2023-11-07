import 'package:flutter/material.dart';

import '../../../shared/theme/colors.dart';
import '../../../shared/theme/styles.dart';
import '../../../shared/widgets/smallbutton.dart';
import '../../jobs/submitApplication.dart';

class OnClickNotice extends StatelessWidget {
  var title = "Auxiliary Health Worker (4th Level Assistant)";

  var date = "14 Sep 2023";
  var jobDescription =
      "Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.Nunc vulputate libero et velit interdum, ac aliquet odio mattis.";
  OnClickNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notices",
          style: TextStyle(color: AppColors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        foregroundColor: AppColors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/himsBackgroundImage2.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: normalStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blue),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Published (" + date + ")"),
                        SizedBox(
                          height: 28,
                        ),
                        Text(jobDescription),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
