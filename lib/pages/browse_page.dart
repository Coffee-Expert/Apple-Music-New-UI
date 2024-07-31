import 'dart:math';
import 'package:musicplayer/lists_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
class BrowsePage extends StatefulWidget {
  BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  List ban = [
    {
      't1': 'WOMENS HISTORY MONTH',
      't2': 'Alpha',
      't3': 'Apple Music',
      'img': 'assets/4.jpg',
    },
    {
      't1': 'NEW PLAYLIST',
      't2': 'Reception Hits',
      't3': 'Apple Music',
      'img': 'assets/2.jpg',
    },
    {
      't1': 'JUST UPDATED',
      't2': 'Soundtrack your wedding with songs',
      't3': 'Apple Music',
      'img': 'assets/3.jpg',
    },
    {
      't1': 'ADD TO YOUR LIBRARY',
      't2': 'Soul Revival',
      't3': 'Apple Music R&B',
      'img': 'assets/4.jpg',
    },
    {
      't1': 'NEW PLAYLIST',
      't2': 'Punjabi Workout',
      't3': 'Apple Music Punjabi',
      'img': 'assets/5.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Set the height
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.0), // Semi-transparent overlay
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(

            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 55), // Blur effect
              child: AppBar(
                backgroundColor: Colors.transparent, // Transparent background

                title: Padding(
                  padding: EdgeInsets.only(top: 20), // Adjust the value as needed
                  child:  Text(
                    "Browse",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white70),
                  ),),
                actions: [
                  Container(
                    padding: EdgeInsets.only(right: 5,top: 12),
                    child: Image.asset("assets/apple.png", height: 55,),

                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 10, left: 0, right: 0),
                height: 350,
                // width: 1080 / 2.5,
                // color: Color.fromARGB(255, 80, 71, 37), for debugging purposes
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ban.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.red,
                      width: 370,
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ban[index]['t1'],
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              ban[index]['t2'],
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              ban[index]['t3'],
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                                child: Image.asset(
                                  ban[index]['img'],
                                  height: 720 / 3,
                                  width: 1080 / 3,
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "We Recommend",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: constants.song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(constants.song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            constants.song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                constants.song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              constants.song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Now in Spatial Audio",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: constants.song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(constants.song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            constants.song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                constants.song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              constants.song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Apple Music Sing",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.amber,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Let's",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sing",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.music_note_outlined,
                              size: 35,
                              shadows: [
                                Shadow(
                                  color:
                                      Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(0, 0),
                                  blurRadius: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "With",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Apple",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color.fromARGB(255, 255, 7, 94),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 47, 88),
                                Color.fromARGB(255, 255, 174, 174)
                              ],
                              stops: [0.4, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Music",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(
                                        255, 255, 255, 255),
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Start Singing",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Daily Top 100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color.fromARGB(255, 186, 186, 186),
                  )
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 5, 69, 68),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: constants.song.length,
                itemBuilder: (context, index) {
                  int randomIndex = Random().nextInt(constants.song.length);

                  return Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: 10, left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            constants.song[randomIndex]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 1)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                constants.song[randomIndex]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              constants.song[randomIndex]['artist'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
