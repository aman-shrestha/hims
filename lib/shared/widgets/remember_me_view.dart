import 'package:flutter/material.dart';

class RememberMeView extends StatelessWidget {
  const RememberMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.check_box_outline_blank,
        ),
        SizedBox(width: 4.0),
        Text(
          "Remember me",
        ),
      ],
    );
  }
}
