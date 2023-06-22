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
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/image 3.png",
                          height: 80,
                          width: 100,
                        ),
                      ),
                      Positioned(
                        left: 75,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                              color: Color(0xff00ADB5), shape: BoxShape.circle),
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
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
