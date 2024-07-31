import 'package:flutter/material.dart';
import 'package:musicplayer/lists_constants.dart';
import 'dart:ui';
class RadioPage extends StatefulWidget {
  RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List radio = [
    {
      'text1': 'Music One',
      'text2': 'The new music matter',
      "topMsg": "Made for you",
      "image":
          "https://c4.wallpaperflare.com/wallpaper/951/930/504/bebe-rexha-singer-music-girls-wallpaper-preview.jpg",
      "title": "Meant to Be",
      "artist": "Expectations",
      "song": ""
    },

    {
      'text1': 'Music Hits',
      'text2': 'Songs you know and love',
      "topMsg": "New Release",
      "image":
          "https://cdns-images.dzcdn.net/images/cover/7889d07266f873721f613b847323c326/1900x1900-000000-80-0-0.jpg",
      "title": "I'm the One",
      "artist": "Dj Khaled",
      "song": ""
    },
    {
      'text1': 'Music Country',
      'text2': 'Where it sounds like home',
      "topMsg": "Featuring Tame Impala",
      "image":
          "https://qodeinteractive.com/magazine/wp-content/uploads/2020/06/16-Tame-Impala.jpg",
      "title": "Tame Impala",
      "artist": "Currents",
      "song": ""
    },
    {
      'text1': 'Music Country',
      'text2': 'Where it sounds like home',
      "topMsg": "Made for you",
      "image":
          "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcT9kry1myZTi2dMJ7OtgJjmdT__lImpI-pJ9mdq42Cz8HhIet_ro_Obp6q4xbksBbpT",
      "title": "The dark side of the moon",
      "artist": "Pink floyd ",
      "song": ""
    },

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
                    "Radio",
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
          SizedBox(height: 15,),
          Container(
            // height: 600,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[0]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[0]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[0]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 9:30 - 11:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[0]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[0]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[1]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[1]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[3]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 12:00 - 1:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[1]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[1]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                // color: Colors.amber,
                child: Column(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.apple,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 1),
                                        child: Text(radio[2]['text1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(radio[2]['text2'],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Color.fromARGB(84, 110, 110, 110),
                              ),
                              child: Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Image.network(
                                  radio[2]['image'],
                                  height: 280,
                                  width: 380,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  height: 100,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 83, 83, 83),
                                      Color.fromARGB(255, 65, 65, 65)
                                    ],
                                    stops: [0, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  )),

                                  // color: Color.fromARGB(255, 255, 227, 114),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("LIVE • 9:30 - 11:30 PM",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  radio[2]['title'],
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  radio[2]['artist'],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.play_circle_fill_rounded,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Container(
            // color: Colors.amber,
            margin: EdgeInsets.only(top: 20),
            height: 30,
            padding: EdgeInsets.only(left: 15),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/musiclist');
              },
              child: Row(
                children: [
                  Text(
                    "Recently Played",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Color.fromARGB(255, 5, 69, 68),
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/player',
                        arguments: {'index': index});
                  },
                  child: Container(
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
                            constants.song[index]['image'],
                            height: 170,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 2.5)),
                            Container(
                              width: 165,
                              // color: Colors.amberAccent,
                              child: Text(
                                constants.song[index]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              constants.song[index]['artist'],
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
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
