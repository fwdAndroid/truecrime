import 'package:flutter/material.dart';
import 'package:truecrime/podscast_player/pods_casts.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  int valueHolder = 20;

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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "May 11 . 1hr,9min",
                        style: TextStyle(
                            color: Color(0xffC3C7CC),
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                      Slider(
                          value: valueHolder.toDouble(),
                          min: 1,
                          max: 100,
                          divisions: 100,
                          activeColor: Colors.white,
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
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
