import 'package:flutter/material.dart';
import 'package:flutterui/appbuttons.dart';
import 'package:flutterui/screens/JobListing.dart';
import 'package:flutterui/textField.dart';

class AddJob extends StatelessWidget {
  const AddJob({Key? key}) : super(key: key);

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
                      "Add New job",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            textfield(Placeholder: "Enter position name"),
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
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Describe Requirement...",
                    hintStyle:
                        TextStyle(color: Color(0xff8F8F9E), fontSize: 15)),
              ),
            ),
            Spacer(),
            appbuttons(
                label: "Submit Job",
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
