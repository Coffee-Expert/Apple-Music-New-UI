import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:musicplayer/lists_constants.dart';
class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


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
                    "Search",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 31, 31, 31)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromARGB(255, 157, 157, 157),
                ),
                Container(
                  // color: Colors.amber,
                  // margin: EdgeInsets.only(top: 10),
                  width: 280,
                  // height: 50,
                  child: TextField(
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Artits, Song, Lyrics and More',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Icon(
                  Icons.mic,
                  size: 30,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 17),
            child: Text(
              "Browse Catogories",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 566 , //may need to adjust acordingly
            child: GridView.builder(
              itemCount: constants.BrowseCat.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of Rows in the grid
                childAspectRatio: 1.6, // ratio of Row width to row height
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.amber,
                  // height: 100,
                  // width: 200,
                  // padding: EdgeInsets.only(top: 5, left: 10),
                  child: Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 0, right: 0),
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Image.network(
                            constants.BrowseCat[index]['image'],
                            height: 130,
                            width: 190,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          constants.BrowseCat[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
