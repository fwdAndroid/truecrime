import 'package:flutter/material.dart';
import 'package:truecrime/podscast_player/pods_casts.dart';

class PodsCast extends StatefulWidget {
  const PodsCast({super.key});

  @override
  State<PodsCast> createState() => _PodsCastState();
}

class _PodsCastState extends State<PodsCast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/image 3.png",
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),
              )),
          Container(
            height: 400,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => PodsCastPlayer()));
                        },
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
          ),
        ],
      ),
    );
  }
}
