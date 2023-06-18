import 'package:flutter/material.dart';
import 'package:truecrime/widget_pages/filters_result.dart';
import 'package:truecrime/widget_pages/productivity_tab.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    int valueHolder = 20;

    return Scaffold(
      backgroundColor: Color(0xff222831),
      appBar: AppBar(
        title: Text(
          "True Crime",
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xff222831),
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
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff5A5F67),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      width: MediaQuery.of(context).size.width,
                      height: 790,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      style:
                                          TextStyle(color: Color(0xffFFFFFF)),
                                    )),
                                Text(
                                  "True Crime Filters",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color(
                                        0xffFFFFFF,
                                      ),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(""),
                              ],
                            ),
                            Divider(
                              color: Color(0xff474C53),
                            ),
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size(160, 41),
                                      shape: RoundedRectangleBorder(),
                                      backgroundColor: Color(0xff00ADB5)),
                                  onPressed: () {},
                                  child: Text(
                                    "Serialized",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size(160, 41),
                                      shape: RoundedRectangleBorder(),
                                      backgroundColor: Color(0xff5A5F67)),
                                  onPressed: () {},
                                  child: Text(
                                    "Episodic",
                                    style: TextStyle(
                                        color: Color(0xff818790),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                            ExpansionTile(
                              iconColor: Colors.white,
                              collapsedIconColor: Colors.white,
                              leading: Text(
                                "Number of Episodes",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w500),
                              ),
                              title: Text(""),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "1-20",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "21-50",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "51-100",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "100+",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ExpansionTile(
                              iconColor: Colors.white,
                              collapsedIconColor: Colors.white,
                              leading: Text(
                                "Number of Hosts",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w500),
                              ),
                              title: Text(""),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "Single",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "Multiple",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ExpansionTile(
                              iconColor: Colors.white,
                              collapsedIconColor: Colors.white,
                              leading: Text(
                                "Podcasts Status",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w500),
                              ),
                              title: Text(""),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "Active",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(
                                              0xff6D727B,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          "Idle",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Tags",
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size(160, 41),
                                      shape: RoundedRectangleBorder(),
                                      backgroundColor: Color(0xff00ADB5)),
                                  onPressed: () {},
                                  child: Text(
                                    "Include",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size(160, 41),
                                      shape: RoundedRectangleBorder(),
                                      backgroundColor: Color(0xff5A5F67)),
                                  onPressed: () {},
                                  child: Text(
                                    "Exclude",
                                    style: TextStyle(
                                        color: Color(0xff818790),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Broad Match",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Show audio that includes any tags, not all tags",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Select Tags",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff6D727B,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Mozart",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff00ADB5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Chopin",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 120,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff6D727B,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Rimsky-Korsakov",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff6D727B,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Beethoven",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff6D727B,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Tchaikovsky",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(
                                          0xff00ADB5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Dvorak",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Duration",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Slider(
                                value: valueHolder.toDouble(),
                                min: 1,
                                max: 100,
                                divisions: 100,
                                activeColor: Color(0xff00ADB5),
                                inactiveColor: Colors.grey,
                                label: '${valueHolder.round()}',
                                onChanged: (double newValue) {
                                  setState(() {
                                    valueHolder = newValue.round();
                                  });
                                },
                                semanticFormatterCallback: (double newValue) {
                                  return '${newValue.round()}';
                                }),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/feed.png",
                                    height: 30,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xff474C53),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(),
                                          fixedSize: Size(100, 20)),
                                      onPressed: () {},
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff00ADB5),
                                          shape: RoundedRectangleBorder(),
                                          fixedSize: Size(100, 20)),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    FiltersResult()));
                                      },
                                      child: Text(
                                        "Apply",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => TagsProductivity()));
                        },
                        child: Container(
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
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              )
                            ],
                          ),
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
