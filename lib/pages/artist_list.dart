import 'package:flutter/material.dart';
import 'package:musicplayer/lists_constants.dart';

class ArtistList extends StatefulWidget {
  ArtistList({super.key});

  @override
  State<ArtistList> createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite Artists",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading:               Row(
          children: [
            SizedBox(width: 1,),
            Image.asset("assets/apple.png", height: 55),
          ],
        ),


    ),
      body: Container(
        child: Container(
            child: ListView.builder(
              itemCount: constants.Artist.length - 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/artist',
                        arguments: {'index': index});
                  },
                  child: Container(
                    // color: Color.fromARGB(255, 63, 55, 28),
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipPath(
                                  clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(150),
                                    ),
                                  ),
                                  child: Image.network(
                                    constants.Artist[index][index]['artist_img'],
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  constants.Artist[index][index]['artist'],
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            ),
                          ],
                        ),
                        Divider(
                          color: Color.fromARGB(255, 61, 61, 61),
                          thickness: .4,
                          indent: 25,
                          endIndent: 0,
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
