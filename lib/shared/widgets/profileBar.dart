import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hims/features/profile/profile.dart';

class ProfileBar extends StatelessWidget {
  final String title;
  final bool leading;
  final Color? color;

  const ProfileBar({
    super.key,
    required this.title,
    required this.leading,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: color, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.white,
      leading: leading
          ? GestureDetector(
              onTap: () {
                Get.to(() => Profile());
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue),
              ),
            )
          : Container(),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
          color: Colors.black,
        ),
      ],
      centerTitle: false,
      elevation: 0,
    );
  }
}
