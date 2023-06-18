import 'package:flutter/material.dart';

class Episodes extends StatefulWidget {
  const Episodes({super.key});

  @override
  State<Episodes> createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
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
