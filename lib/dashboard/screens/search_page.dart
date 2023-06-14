import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "True Crime",
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => TagsProductivity()));
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/f.png",
                  height: 22,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/tag.png",
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Productivity",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Container(
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(
                              0xff6D727B,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1234",
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/image 3.png",
                              height: 140,
                              width: 140,
                            ),
                          ],
                        ),
                      )),
                  Image.asset("assets/s.png"),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    width: 370,
                    height: 80,
                    child: Text(
                      "Episode 120: What Everybody Should be Doing, but Mostly Only Software people do",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    width: 370,
                    height: 68,
                    child: Text(
                      "On October 15, 2018, a couple was brutally murdered in a small Wisconsin town, and their 13-year-old daughter vanished without a trace. For 88 days, the search for Jayme Closs was a mystery that captivated the nation and left a grieving family holding its breath.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider()
                ],
              );
            }),
      ),
    );
  }
}
