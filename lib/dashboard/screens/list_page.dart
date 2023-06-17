import 'package:flutter/material.dart';
import 'package:truecrime/listtab/downloads.dart';
import 'package:truecrime/listtab/listen.dart';
import 'package:truecrime/listtab/playlists.dart';
import 'package:truecrime/listtab/podscast.dart';
import 'package:truecrime/listtab/progess.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/v.png",
                height: 20,
              ),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Color(0xff00ADB5),
            unselectedLabelColor: Colors.white,
            labelColor: Color(0xff00ADB5),
            labelStyle: TextStyle(fontSize: 12),
            tabs: <Widget>[
              Tab(
                text: "Podscasts",
              ),
              Tab(
                text: "Playlists",
              ),
              Tab(
                text: "Listen Later",
              ),
              Tab(
                text: "In Progress",
              ),
              Tab(
                text: "Downloads",
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          title: Text(
            "Library",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff222831),
        ),
        body: TabBarView(
          children: <Widget>[
            PodsCast(),
            Playlist(),
            Listen(),
            Progress(),
            Downloads()
          ],
        ),
      ),
    );
  }
}
