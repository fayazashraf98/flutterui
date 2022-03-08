import 'package:flutter/material.dart';

class joblistCont extends StatelessWidget {
  final GestureTapCallback onpres;
  joblistCont({required this.onpres});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 11),
        padding: EdgeInsets.only(left: 27, right: 27),
        height: 102,
        decoration: BoxDecoration(
          color: Color(0xFF1E1C24),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Flutter Developer Required",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onpres,
                      child: Icon(
                        Icons.edit_note_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
            Row(children: const [
              Text(
                "Karachi,Pakistan",
                style: TextStyle(
                  color: Color(0xff8F8F9E),
                  fontSize: 12,
                ),
              )
            ])
          ],
        ));
  }
}
