import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/lists_constants.dart';

class MusicList extends StatefulWidget {
  MusicList({super.key});

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.red),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "        Now in Spatial Audio",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: GridView.builder(
        itemCount: constants.song.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of Rows in the grid
          childAspectRatio: .750, // ratio of Row width to row height
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () async {
              Navigator.pushNamed(context, '/player',
                  arguments: {'index': index});
            },
            child: Container(
              margin: EdgeInsets.all(10),
              // color: Colors.amber,
              // height: 100,
              // width: 200,
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.network(
                      constants.song[index]['image'],
                      height: 180,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 300,
                          child: Text(
                            constants.song[index]['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 190,
                        child: Text(
                          constants.song[index]['artist'],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color.fromARGB(255, 182, 182, 182),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
