import 'dart:math';
import 'package:musicplayer/lists_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
class LibraryPage extends StatefulWidget {
  LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
                    "Library",
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
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.queue_music_rounded,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Playlist",
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 103, 103, 103),
                    thickness: .4,
                    indent: 50,
                    endIndent: 0,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.mic_external_on,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Artist",
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 103, 103, 103),
                    thickness: .4,
                    indent: 50,
                    endIndent: 0,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.subscriptions_rounded,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Album",
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 103, 103, 103),
                    thickness: .4,
                    indent: 50,
                    endIndent: 0,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/musiclist");
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.music_note,
                              color: Colors.red,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Songs",
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                    Divider(
                      color: Color.fromARGB(255, 103, 103, 103),
                      thickness: .4,
                      indent: 50,
                      endIndent: 0,
                    ),
                    Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.only(top: 20),
                      height: 30,
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            "Recently Added",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
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
                          int randomIndex =
                              Random().nextInt(constants.song.length);

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
                                    Padding(padding: EdgeInsets.only(top: 2.5)),
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
            ],
          ),
        ),
      ),
    );
  }
}
