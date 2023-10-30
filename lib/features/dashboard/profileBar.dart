import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  final String title;

  const ProfileBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.white,
      leading: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0), color: Colors.blue),
      ),
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
