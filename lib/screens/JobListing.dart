import 'package:flutter/material.dart';
import 'package:flutterui/joblistCont.dart';
import 'package:flutterui/screens/AddJob.dart';
import 'package:flutterui/screens/EditJob.dart';
import 'package:flutterui/screens/LoginScreen.dart';

class JobLiListing extends StatelessWidget {
  const JobLiListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddJob()));
        },
        icon: Icon(
          Icons.add_circle,
          size: 50,
          color: Color(0xffE5E5E5),
        ),
      ),
      backgroundColor: Color(0xff191720),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 79, left: 27, bottom: 59, right: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Muhammad Fayaz",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => LoginScreen()));
                        },
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                height: 56,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1C24),
                  border: Border.all(color: Color(0xff5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff5D5D67),
                      ),
                      border: InputBorder.none,
                      hintText: "Search keywords..",
                      hintStyle:
                          TextStyle(color: Color(0xff8F8F9E), fontSize: 15)),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              joblistCont(onpres: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EditJob()));
              }),
              joblistCont(onpres: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EditJob()));
              }),
              joblistCont(onpres: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EditJob()));
              }),
              joblistCont(onpres: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EditJob()));
              }),
              joblistCont(onpres: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EditJob()));
              }),
            ],
          ),
        )
      ]),
    );
  }
}
