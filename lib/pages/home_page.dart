import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musicplayer/lists_constants.dart';
import 'dart:math';
import 'dart:ui';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  padding:  EdgeInsets.only(top: 20), // Adjust the value as needed
                  child:  Text(
                  "Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white70),
                ),),
                actions: [
                  Container(
                    padding: EdgeInsets.only(right: 5, top: 12),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Container(
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Top Picks For You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: constants.TopPicks.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/artist',
                          arguments: {'index': index +1});
                    },
                    child: Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.only(right: 10, left: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            constants.TopPicks[index]['topMsg'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 153, 153),
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ClipPath(
                            clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                            ),
                            child: Image.network(
                              constants.TopPicks[index]['image'],
                              height: 305,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipPath(
                            clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              height: 70,
                              width: 250,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                   Color.fromARGB(255, 83, 83, 83),
                                  Color.fromARGB(255, 36, 36, 36)
                                ],
                                stops: [0, 1],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 1)),
                                  Text(
                                    constants.TopPicks[index]['title'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    constants.TopPicks[index]['artist'],
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
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
                      "Now in Spatial Audio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color:  Color.fromARGB(255, 186, 186, 186),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(255, 28, 28, 28),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                itemCount: 7,
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
                                borderRadius: BorderRadius.circular(12),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5.5)),
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
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 20),
              height: 30,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Discover More of Apple Music",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 20),
              // height: 300,
              padding: EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/artistlist');
                },
                child: Row(
                  children: [
                    Text(
                      "Favourite Artists",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color:  Color.fromARGB(255, 186, 186, 186),
                    )
                  ],
                ),
              ),
            ),
            Container(

              height: 250,
              // width: 165,
              //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: constants.Artist.length,
                itemBuilder: (context, outerIndex) {
                  // Assuming you want to display the first item from each artist list
                  var artistList = constants.Artist[outerIndex];
                  return InkWell(

                    onTap: () {
                      Navigator.pushNamed(context, '/artist',
                          arguments: {'index': outerIndex});
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                      // color:  Color.fromARGB(255, 112, 145, 172),
                      child: Column(
                        children: [
                          ClipPath(
                            clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                            child: Image.network(
                              artistList[0][
                                  'artist_img'], // Accessing the first artist's image
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            artistList[0][
                            'artist'], // Accessing the first artist's name
                            style: TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
