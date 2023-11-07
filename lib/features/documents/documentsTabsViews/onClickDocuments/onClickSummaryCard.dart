import 'package:flutter/material.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class OnClickSummaryCard extends StatelessWidget {
  var title = "what is this living guideline? ";
  var subtitle =
      "Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, aliquet odio mattis. Nunc vulputate libero et velit interdum, aliquet odio mattis. Nunc vulputate libero et velit interdum, aliquet odio mattis.Nunc vulputate libero et velit interdum, aliquet odio mattis.";
  OnClickSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1. Summary: " + title,
                style: normalStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Text(subtitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "Read More",
                    style: smallStyle.copyWith(color: AppColors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
