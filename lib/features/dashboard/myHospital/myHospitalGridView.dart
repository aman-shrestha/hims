import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/myHospital/gridView1Card.dart';
import 'package:hims/features/dashboard/myHospital/gridView2Container.dart';

class MyHospitalGridView1 extends StatelessWidget {
  List image = [
    "assets/images/beds.svg",
    "assets/images/icu.svg",
    "assets/images/cylinder.svg",
    "assets/images/ambulance.svg",
  ];
  List title = [
    "Available Beds",
    "ICU Room",
    "Oxygen Cylinder",
    "Available Ambulance",
  ];
  List no = [
    "1",
    "2",
    "1",
    "2",
  ];
  MyHospitalGridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: image.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 8,
          childAspectRatio: 2,
          crossAxisSpacing: 8),
      itemBuilder: (BuildContext context, index) => GridView1Card(
        image: image[index],
        title: title[index],
        no: no[index],
      ),
    );
  }
}

class MyHospitalGridView2 extends StatelessWidget {
  List image = [
    "assets/images/generalBlue.svg",
    "assets/images/oxygenBlue.svg",
    "assets/images/ambulanceBlue.svg",
    "assets/images/OPDBlue.svg",
    "assets/images/medicineBlue.svg",
    "assets/images/labBlue.svg",
  ];
  List title = [
    "General",
    "Oxygen",
    "Ambulance",
    "OPD Ward",
    "Medicine",
    "Lab",
  ];
  MyHospitalGridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: image.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, index) => GridView2Container(
        image: image[index],
        title: title[index],
      ),
    );
  }
}
