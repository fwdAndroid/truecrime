import 'package:flutter/material.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(0xff6E6E6F),
                      Color(0xff3E4652).withOpacity(.10)
                    ])),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        width: 374,
                        child: Text(
                          "Short Title: Elon Musk on Spacex",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/image 3.png"),
                        title: Container(
                          child: Text(
                            "Episode Title:#660: Dr. Andrew Huberman -The Foundations of Physical and Mental...",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Marach 23. 1hr 12min",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Image.asset(
                            "assets/noaudio.png",
                            height: 15,
                            width: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
