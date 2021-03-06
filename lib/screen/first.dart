import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class Alan extends StatelessWidget {
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
                    image: AssetImage('assets/images/alaco.jpg'),
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
                        image: AssetImage('assets/images/alancover.jpg'),
                      ),
                    ),
                  ),
                  title: Text(
                    '  OnMyWay',
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
                        onPressed: () async {
                          advancedplayer.stop();
                        },
                        icon: Icon(
                          Icons.stop,
                          size: 30,
                          color: Colors.white60,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          advancedplayer =
                              await AudioCache().play('audio/OnMyWay.mp3');
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          advancedplayer.pause();
                        },
                        icon: Icon(
                          Icons.pause,
                          size: 30,
                          color: Colors.white60,
                        ),
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
                        image: AssetImage('assets/images/alan.jpg'),
                      ),
                    ),
                  ),
                  title: Text(
                    '  Faded',
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
                              await AudioCache().play('audio/Faded.mp3');
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
              Text(
                "-----From Network---------",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
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
                        image: AssetImage('assets/images/spectre.jpg'),
                      ),
                    ),
                  ),
                  title: Text(
                    '  Spectre',
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
                        onPressed: () async {
                          advancedplayer.stop();
                        },
                        icon: Icon(
                          Icons.stop,
                          size: 30,
                          color: Colors.white60,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await advancedplayer.play(
                              'https://github.com/coolAryan/Musicholic/raw/master/Alan%20Walker%20-%20The%20Spectre.mp3');
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          advancedplayer.pause();
                        },
                        icon: Icon(
                          Icons.pause,
                          size: 30,
                          color: Colors.white60,
                        ),
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
