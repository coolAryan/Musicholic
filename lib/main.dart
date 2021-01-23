import 'package:app4/UI/off_video.dart';
import 'package:app4/screen/second.dart';
import 'package:flutter/material.dart';
import './UI/contain.dart';
import 'package:google_fonts/google_fonts.dart';
import './screen/first.dart';
import './screen/fourth.dart';
import 'UI/on_video.dart';

main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => OneApp(),
        "/alan": (context) => Alan(),
        "/ed": (context) => EdSheeran(),
        "/mat": (context) => Martin(),
        "/offt": (context) => VideoPlayerScreen(),
        "/onnt": (context) => Video(),
      },
    ),
  );
}

class OneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Musicaholic',
          style: GoogleFonts.indieFlower(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        leading: Icon(Icons.dehaze),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.sort), onPressed: () {}),
        ],
        backgroundColor: Colors.blue.shade800,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/night.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          primary: false,
          mainAxisSpacing: 10,
          crossAxisSpacing: 12,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/alan");
              },
              child: a,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/ed");
              },
              child: b,
            ),
            c,
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/mat");
                },
                child: d),
            e,
            f,
            g,
            h,
            i,
            j,

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/offt");
              },
              child: r1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/onnt");
              },
              child: r2,
            ),

            // k,
            // l,
          ],
        ),
      ),
      bottomNavigationBar: q,
    );
  }
}
