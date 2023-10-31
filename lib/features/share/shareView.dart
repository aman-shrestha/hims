import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hims/features/share/shareButton.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class ShareView extends StatelessWidget {
  const ShareView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Share",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            color: AppColors.blue,
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      width: 148,
                      height: 148,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sushma Tamrakar",
                      style: mediumStyle.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Scan QR code in your phone",
                      style: smallStyle.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    SvgPicture.asset("assets/images/qr.svg"),
                    SizedBox(
                      height: 50,
                    ),
                    ShareButton()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
