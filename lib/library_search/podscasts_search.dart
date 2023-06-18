import 'package:flutter/material.dart';

class PodscastSearch extends StatefulWidget {
  const PodscastSearch({super.key});

  @override
  State<PodscastSearch> createState() => _PodscastSearchState();
}

class _PodscastSearchState extends State<PodscastSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Image.asset(
                    "assets/image 3.png",
                    height: 124,
                  ),
                  Text(
                    "Lex Fridman Podcast",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                  Text(
                    "Lex Fridman Podcast",
                    style: TextStyle(
                        color: Color(0xff818790),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
