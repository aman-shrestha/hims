import 'package:flutter/material.dart';
import 'package:hims/features/share/scanButton.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        title: Text(
          "Share",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            color: Colors.white,
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.blue,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sushma Tamrakar",
                        style:
                            mediumStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code),
                        iconSize: 200,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Align QR code within to scan frame",
                style: smallStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              ScanButton(),
            ],
          ),
        ),
      ),
    );
  }
}
