import 'package:flutter/material.dart';
import 'package:hims/shared/theme/styles.dart';

class VitalsBodyWeightCard extends StatelessWidget {
  const VitalsBodyWeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            "Add Body Weight",
            style: normalStyle.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
