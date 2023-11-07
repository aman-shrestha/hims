import 'package:flutter/material.dart';

import '../../../../../shared/theme/styles.dart';

class VitalsBodyPressureCard extends StatelessWidget {
  var sys = "120";
  var dia = "80";
  var pulse = "60";
  VitalsBodyPressureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            "Add Body Pressure",
            style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'sys\nmmHG',
                    style: normalStyle,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
