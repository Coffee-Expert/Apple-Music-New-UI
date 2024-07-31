import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
   AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  List TopPicks = [
    {
      //here i mentioned the color in hexadecimal format should start with 0xFF
      "topMsg": "Made for you",
      "image":
      "https://upload.wikimedia.org/wikipedia/en/1/1b/Joji_-_Nectar.png",
      "title": "Nectar",
      "artist": "Joji",
      "song": ""
    },
    {
      "topMsg": "New Release",
      "image":
      "https://static.stereogum.com/uploads/2023/03/LDR-Tunnel-1679672318-1000x1000.jpg",
      "title": "Ocean Blvd",
      "artist": "Lana Del Rey",
      "song": ""
    },
    {
      "topMsg": "Featuring Tame Impala",
      "image":
      "https://qodeinteractive.com/magazine/wp-content/uploads/2020/06/16-Tame-Impala.jpg",
      "title": "Tame Impala",
      "artist": "Currents",
      "song": ""
    },
    {
      "topMsg": "Made for you",
      "image":
      "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcT9kry1myZTi2dMJ7OtgJjmdT__lImpI-pJ9mdq42Cz8HhIet_ro_Obp6q4xbksBbpT",
      "title": "The dark side of the moon",
      "artist": "Pink floyd ",
      "song": ""
    },
    {
      "topMsg": "Featuring Tame Nico",
      "image":
      "https://upload.wikimedia.org/wikipedia/en/0/0c/Velvet_Underground_and_Nico.jpg",
      "title": "The Velvet Underground and Nico",
      "artist": "Nico",
      "song": ""
    },
  ];
  List songL = [
    [
      {
        'artist': 'Joji',
        'artist_img':
        'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',
        'image':
        'https://i.scdn.co/image/ab67616d0000b27308596cc28b9f5b00bfe08ae7', //url
        'song': 'Glimpse of Us',
        'album': 'Nectar',
      },
      {
        'artist': 'Joji',
        'artist_img':
        'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
        'https://i.scdn.co/image/ab67616d0000b27360ba1d6104d0475c7555a6b2', //url
        'song': 'Slow Dancing in the Dark',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img':
        'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
        'https://i.scdn.co/image/ab67616d0000b2734896429a87abfacd5d90587b', //url
        'song': 'Run',
        'album': 'BALLADS 1',
      },
      {
        'artist': 'Joji',
        'artist_img':
        'https://www.billboard.com/wp-content/uploads/2020/03/joji-2020-cr-Damien-Maloney-billboard-1548-1585678185.jpg?w=942&h=623&crop=1',

        'image':
        'https://i.scdn.co/image/ab67616d0000b27323c552a7a4fdafac02e08c34', //url
        'song': 'Sanctuary',
        'album': 'NECTAR',
      },
    ],
    [
      {
        'artist': 'Lana Del Rey',
        'artist_img':
        'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d0000b273cb76604d9c5963544cf5be64', //url
        'song': 'Born to Die',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
        'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d00001e02aa27708d07f49c82ff0d0dae', //url
        'song': 'Video Games',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
        'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d00001e020fa3aa7c15a3d57b3c6f74e9', //url
        'song': 'Summertime Sadness',
        'album': 'Born to Die',
      },
      {
        'artist': 'Lana Del Rey',
        'artist_img':
        'https://media.themusic.com.au/images/standard/Artists/L/lana-del-rey/lana-del-rey-did-you-know.990x660.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d00001e021624590458126fc8b8c64c2f', //url
        'song': 'Blue Jeans',
        'album': 'Ultraviolence',
      },
    ],
    [
      {
        'artist': 'Tame Impala',
        'artist_img':
        'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',
        'image':
        'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
        'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
        'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
        'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Tame Impala',
        'artist_img':
        'https://i0.wp.com/sinusoidalmusic.com/wp-content/uploads/2023/03/Web-capture_10-3-2023_194552_i1.wp.com_.jpeg?fit=1684%2C945&ssl=1',

        'image':
        'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
    [
      {
        'artist': 'Nico',
        'artist_img':
        'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d0000b2739169478a2159b97202ef35b0', //url
        'song': 'Let It Happen',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img':
        'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79', //url
        'song': 'The Less I Know the Better',
        'album': 'Currents',
      },
      {
        'artist': 'Nico',
        'artist_img':
        'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy07EW5VPnMshmSD9_Gy2kFRmm4X3_1ckmutnBnPx9-GqHyI8isKu0tnhmwJL9ioUhynE&usqp=CAU', //url
        'song': 'Elephant',
        'album': 'Lonerism',
      },
      {
        'artist': 'Nico',
        'artist_img':
        'https://m.media-amazon.com/images/M/MV5BNjIxYzRiMTgtN2Y2Ni00Zjg0LTkxOWEtMTg1Y2UxZjliM2MwL2ltYWdlXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg',
        'image':
        'https://i.scdn.co/image/ab67616d0000b273370c12f82872c9cfaee80193', //url
        'song': 'Feels Like We Only Go Backwards',
        'album': 'Currents',
      },
    ],
  ];
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final routes =
      ModalRoute.of(context)?.settings.arguments as Map<String, int>;
      if (routes.containsKey('index')) {
        setState(() {
          currentIndex = routes['index']!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              margin:  EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:  EdgeInsets.only(top: 15),
                    padding:  EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset("assets/apple.png", height: 55,),

                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding:  EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color:  Color.fromARGB(85, 79, 79, 79),
                        ),
                        child:  Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.red,
                        ),
                      ),
                       SizedBox(
                        width: 18,
                      ),
                      Container(
                        padding:  EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color:  Color.fromARGB(85, 79, 79, 79),
                        ),
                        child:  Icon(
                          Icons.more_horiz,
                          size: 20,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Image.network(
                        TopPicks[currentIndex]['image'],
                        height: 300,
                        width: 300,
                      )),
                   SizedBox(
                    height: 20,
                  ),
                  Text(
                    TopPicks[currentIndex]['title'],
                    style:  TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    TopPicks[currentIndex]['artist'],
                    style:  TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.normal,
                        color: Colors.red),
                  ),
                   Text(
                    "SoundTrack • 2024 • Lossless",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.amber,
              margin:  EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color.fromARGB(85, 79, 79, 79)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.red,
                          size: 30,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color.fromARGB(85, 79, 79, 79)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shuffle_rounded,
                          color: Colors.red,
                          size: 30,
                        ),
                        Text(
                          "Shuffle",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.blue,
                height: 300,
                // width: 500,
                margin:  EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListView.builder(
                  itemCount: songL.length,
                  itemBuilder: (context, index) {
                    int i = index + 1;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Divider(
                          color: Color.fromARGB(255, 80, 80, 80),
                          thickness: .4,
                          indent: 1,
                          endIndent: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  i.toString(),
                                  style:  TextStyle(
                                      fontSize: 22, color: Colors.grey),
                                ),
                                 SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 320,
                                  // color: Colors.amber,
                                  child: Text(
                                    songL[currentIndex][index]['song'],
                                    style:  TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                             Icon(
                              Icons.more_horiz,
                              size: 25,
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
