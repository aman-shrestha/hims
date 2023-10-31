import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/medications/fileUploader.dart';
import 'package:hims/shared/theme/colors.dart';
import 'package:hims/shared/theme/styles.dart';
import 'package:hims/shared/widgets/buttonLarge.dart';

class UploadDocument extends StatelessWidget {
  FocusNode textFocus = FocusNode();
  UploadDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Documents"),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColors.blue,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            try {
              textFocus.unfocus();
            } catch (e) {
              print(e);
            }

            print("Tapped");
          },
          child: Container(
            height: 900,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/himsBackgroundImage2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Upload Documents",
                              style: normalStyle.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Title",
                            style: smallStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(208, 213, 221, 1)),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Upload Documents",
                            style: smallStyle,
                          ),
                          FileUpload(),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Descriptions",
                            style: smallStyle,
                          ),
                          SizedBox(
                            child: TextField(
                              autofocus: true,
                              focusNode: textFocus,
                              maxLines: 5, // <--- maxLines
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(208, 213, 221, 1)),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ButtonLarge(text: "Upload")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
