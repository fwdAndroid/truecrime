import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/image 3.png"),
                  title: Text(
                    "Thursday Afternoon Monday Morning Podcast 5-11-23",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  subtitle: Text(
                    "May 11 . 1hr,9min",
                    style: TextStyle(
                        color: Color(0xffC3C7CC),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
