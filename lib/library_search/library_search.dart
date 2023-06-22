import 'package:flutter/material.dart';
import 'package:truecrime/library_search/episodes.dart';
import 'package:truecrime/library_search/podscasts_search.dart';
import 'package:truecrime/library_search/shorts.dart';

class LibrarySearch extends StatefulWidget {
  const LibrarySearch({super.key});

  @override
  State<LibrarySearch> createState() => _LibrarySearchState();
}

class _LibrarySearchState extends State<LibrarySearch> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Color(0xff00ADB5),
            unselectedLabelColor: Colors.white,
            labelColor: Color(0xff00ADB5),
            labelStyle: TextStyle(fontSize: 12),
            tabs: <Widget>[
              Tab(
                text: "Podscasts",
              ),
              Tab(
                text: "Episodes",
              ),
              Tab(
                text: "Shorts",
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
                onPressed: () {
                  controller.clear();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Color(0xff00ADB5)),
                ))
          ],
          title: TextFormField(
            controller: controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                filled: true,
                fillColor: Color(0xff5A5F67),
                hintText: "Search word",
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
          backgroundColor: Color(0xff222831),
        ),
        body: TabBarView(
          children: <Widget>[
            PodscastSearch(),
            Episodes(),
            Shorts(),
          ],
        ),
      ),
    );
  }
}
