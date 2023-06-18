import 'package:flutter/material.dart';

class TagsProductivity extends StatefulWidget {
  const TagsProductivity({super.key});

  @override
  State<TagsProductivity> createState() => _TagsProductivityState();
}

class _TagsProductivityState extends State<TagsProductivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 24,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/upload.png",
              height: 22,
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/tag.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Productivity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/blue.png"),
            Divider(),
            Container(
              height: 500,
              child: ListView.builder(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Marach 23, 1hr 12min",
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
            ),
          ],
        ),
      ),
    );
  }
}
