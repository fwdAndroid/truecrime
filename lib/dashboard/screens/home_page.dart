import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int valueHolder = 20;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xff9F4444),
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
                "assets/f.png",
                height: 22,
              ))
        ],
      ),
      backgroundColor: Color(0xff9F4444),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    width: 374,
                    height: 90,
                    child: Text(
                      "The Key to Making Pragmatic Ambition Succeed",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset("assets/Frame 60.png"),
                  Slider(
                      value: valueHolder.toDouble(),
                      min: 1,
                      max: 100,
                      divisions: 100,
                      activeColor: Colors.green,
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
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    width: 370,
                    height: 68,
                    child: Text(
                      "Cal Newport: Lifestyle Design, Slow Productivity, and Contrarian Writing",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: StreamBuilder<DurationState>(
                      stream: null,
                      builder: (context, snapshot) {
                        final durationState = snapshot.data;
                        final progress =
                            durationState?.progress ?? Duration.zero;
                        final buffered =
                            durationState?.buffered ?? Duration.zero;
                        final total = durationState?.total ?? Duration.zero;
                        return ProgressBar(
                          progress: progress,
                          buffered: buffered,
                          total: total,
                          progressBarColor: Colors.red,
                          baseBarColor: Colors.white.withOpacity(0.24),
                          bufferedBarColor: Colors.white.withOpacity(0.24),
                          thumbColor: Colors.white,
                          barHeight: 3.0,
                          thumbRadius: 5.0,
                          onSeek: (duration) {
                            // _player.seek(duration);
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/like.png",
                          width: 22,
                          height: 22,
                        ),
                        Image.asset(
                          "assets/upload.png",
                          width: 22,
                          height: 22,
                        ),
                        Image.asset(
                          "assets/add.png",
                          width: 22,
                          height: 22,
                        ),
                      ],
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

class DurationState {
  const DurationState(
      {required this.progress, required this.buffered, required this.total});
  final Duration progress;
  final Duration buffered;
  final Duration total;
}
