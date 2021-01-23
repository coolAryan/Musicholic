import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class EdSheeran extends StatelessWidget {
  AudioPlayer advancedplayer;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/edcover.jpg'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(width: 3, color: Colors.grey)),
                ),
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/beautiful.jpg'),
                      ),
                    ),
                  ),
                  title: Text(
                    '  Beautiful',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  subtitle: Text(" "),
                  tileColor: Colors.grey.shade800,
                  trailing: Row(
                    children: [
                      IconButton(
                        //alignment: Alignment.center,
                        icon: Icon(
                          Icons.stop,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer.stop();
                        },
                      ),
                      IconButton(
                        //alignment: Alignment.center,
                        icon: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer =
                              await AudioCache().play('audio/Perfect.mp3');
                        },
                      ),
                      IconButton(
                        // alignment: Alignment.center,
                        icon: Icon(
                          Icons.pause,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer.pause();
                        },
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(width: 3, color: Colors.grey)),
                ),
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/ed sheeran.jpg'),
                      ),
                    ),
                  ),
                  title: Text(
                    '  Perfect',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  subtitle: Text(" "),
                  tileColor: Colors.grey.shade800,
                  trailing: Row(
                    children: [
                      IconButton(
                        //alignment: Alignment.center,
                        icon: Icon(
                          Icons.stop,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer.stop();
                        },
                      ),
                      IconButton(
                        //alignment: Alignment.center,
                        icon: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer =
                              await AudioCache().play('audio/Perfect.mp3');
                        },
                      ),
                      IconButton(
                        // alignment: Alignment.center,
                        icon: Icon(
                          Icons.pause,
                          size: 30,
                          color: Colors.white60,
                        ),
                        onPressed: () async {
                          advancedplayer.pause();
                        },
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
