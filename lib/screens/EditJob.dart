import 'dart:ui';

import 'package:flutter/material.dart';

import '../appbuttons.dart';
import '../textField.dart';
import 'JobListing.dart';

class EditJob extends StatelessWidget {
  const EditJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff191720),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 27, bottom: 30, right: 27),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => JobLiListing()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Edit job",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF1E1C24),
                  border: Border.all(color: Color(0xff5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Flutter Developer",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff1E1C24),
                border: Border.all(color: Color(0xff5D5D67), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Spacer(),
            appbuttons(
                label: "Update Job",
                onPress: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => JobLiListing()));
                }),
          ],
        ),
      ),
    );
  }
}
