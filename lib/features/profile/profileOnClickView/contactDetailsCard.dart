import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';

class ContactDetailsCard extends StatelessWidget {
  final List<String> contactTitle;
  final List<String> contactSubtitle;

  final String icon;
  final String title;
  ContactDetailsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.contactTitle,
    required this.contactSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: normalStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(21, 11, 61, 1)),
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset("assets/images/Add.svg"),
                    SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset("assets/images/edit.svg"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contactTitle.length,
              itemBuilder: (BuildContext context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contactTitle[index],
                    style: smallStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(21, 11, 61, 1),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    contactSubtitle[index],
                    style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(82, 75, 107, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
