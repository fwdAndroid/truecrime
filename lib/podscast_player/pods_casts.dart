import 'package:flutter/material.dart';

class PodsCastPlayer extends StatefulWidget {
  const PodsCastPlayer({super.key});

  @override
  State<PodsCastPlayer> createState() => _PodsCastPlayerState();
}

class _PodsCastPlayerState extends State<PodsCastPlayer> {
  @override
  Widget build(BuildContext context) {
    int valueHolder = 20;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Image.asset(
                "assets/lo.png",
                width: 200,
                height: 150,
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: 350,
              height: 72,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Cal Newport: Lifestyle Design, Slow Productivity, and Contrarian Writing Copy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: 350,
              height: 72,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "2yrs ago",
                  style: TextStyle(
                      color: Color(0xffC3C7CC),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/ThumbUp.png",
                  height: 27,
                  width: 20,
                ),
                Image.asset(
                  "assets/ThumbDown.png",
                  height: 27,
                  width: 20,
                ),
                Image.asset(
                  "assets/share.png",
                  height: 27,
                  width: 20,
                ),
                Image.asset(
                  "assets/AddToWatchLater.png",
                  height: 27,
                  width: 20,
                ),
              ],
            ),
            Divider(
              color: Color(0xff474C53),
            ),
            ListTile(
              title: Text(
                "The Daily",
                style: TextStyle(
                    color: Color(0xffC3C7CC),
                    fontSize: 21,
                    fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "2.7M Followers",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color(0xff818790)),
              ),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00ADB5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Divider(
              color: Color(0xff474C53),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 372,
                height: 120,
                child: Text(
                  "After 25 years at the Late Night desk, Conan realized that the only people at his holiday party are the men and women who work for him. Over the years and despite thousands of interviews, Conan has never made a real and lasting friendship with any of his celebrity guests. So, he started a podcast to do just that. Deeper, unboundedly playful, and free from FCC regulations",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/Frame 71.png",
                  height: 32,
                  width: 32,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/Replay 10.png",
                  height: 32,
                  width: 32,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/Play circle filled.png",
                  height: 58,
                  width: 58,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/Forward 10.png",
                  height: 32,
                  width: 32,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  child: Image.asset(
                    "assets/Timer.png",
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
