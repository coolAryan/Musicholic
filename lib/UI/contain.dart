import 'package:flutter/material.dart';

var a = Container(
  height: 200,
  width: 200,
  decoration: BoxDecoration(
    // color: Colors.green,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/alan.jpg'),
    ),
  ),
);

var b = Container(
  height: 200,
  width: 200,
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'assets/images/ed sheeran.jpg',
      ),
    ),
  ),
);

var c = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/marsh.jpg'),
      ),
    ),
  ),
);
var d = Container(
  height: 200,
  width: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/martin.jpg'),
    ),
  ),
);
var e = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/summer69.jpg'),
      ),
    ),
  ),
);
var f = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image:
            AssetImage('assets/images/One_Direction_Concert_Movie_Poster.jpg'),
      ),
    ),
  ),
);
var g = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image:
            AssetImage('assets/images/the-chainsmokers-miami-music-week.jpg'),
      ),
    ),
  ),
);

var h = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/kygo.jpg'),
      ),
    ),
  ),
);
var i = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/coldplay.jpg'),
      ),
    ),
  ),
);
var j = GestureDetector(
  onTap: () {},
  child: Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/maroon5.jpg'),
      ),
    ),
  ),
);
var k = Container(
  height: 20,
  width: 20,
);
// var k = GestureDetector(
//   onTap: () {},
//   child: Container(
//     height: 200,
//     width: 200,
//     padding: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(
//         Radius.circular(15),
//       ),
//       image: DecorationImage(
//         fit: BoxFit.cover,
//         image: AssetImage(
//           'assets/images/eminem.jpg',
//         ),
//       ),
//     ),
//   ),
// );
// var l = GestureDetector(
//   onTap: () {},
//   child: Container(
//     height: 200,
//     width: 200,
//     padding: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(
//         Radius.circular(15),
//       ),
//       image: DecorationImage(
//         fit: BoxFit.cover,
//         image: AssetImage(
//           'assets/images/americanauthor.jpg',
//         ),
//       ),
//     ),
//   ),
// );
var r1 = Container(
  height: 300,
  width: 300,
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'assets/images/americanauthor.jpg',
      ),
    ),
  ),
);
var r2 = Container(
  height: 300,
  width: 300,
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'assets/images/eminem.jpg',
      ),
    ),
  ),
);
var q = BottomNavigationBar(
  //showSelectedLabels: true,
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      //ignore: deprecated_member_use
      title: Text('Home'),
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mic),
      // ignore: deprecated_member_use
      title: Text('Search'),
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.radio),
      // ignore: deprecated_member_use
      title: Text('Radio'),
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      // ignore: deprecated_member_use
      title: Text('Favourite'),
      backgroundColor: Colors.grey,
    ),
  ],
  currentIndex: 0,
  selectedItemColor: Colors.blue[800],
  //onTap:tap,
);
