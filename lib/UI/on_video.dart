import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController videoPlayerController;
Future<void> initializePlayer;

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/night.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: new ContinuousRectangleBorder(
                    borderRadius: new BorderRadius.circular(28),
                  ),
                  child: FutureBuilder(
                    future: initializePlayer,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                              child: VideoPlayer(videoPlayerController)),
                        );
                      } else {
                        return AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Card(
                            child: Container(
                              color: Colors.black87,
                            ),
                            shape: Border.all(
                                color: Colors.grey.shade400, width: 10),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton.icon(
                        onPressed: () {
                          setState(() {});
                          videoPlayerController = VideoPlayerController.network(
                              'https://youtu.be/j5-yKhDd64s');
                          initializePlayer = videoPlayerController.initialize();
                          videoPlayerController.setVolume(1.0);
                          videoPlayerController.play();
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton.icon(
                        onPressed: () {
                          videoPlayerController.pause();
                        },
                        icon: Icon(
                          Icons.pause,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
