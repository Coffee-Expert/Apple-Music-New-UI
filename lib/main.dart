import 'package:flutter/material.dart';
import 'package:musicplayer/Bottom%20NavBar/bottom_nav.dart';
import 'package:musicplayer/pages/list.dart';
import 'package:musicplayer/pages/album_page.dart';
import 'package:musicplayer/pages/artist_list.dart';
import 'package:musicplayer/pages/artist_page.dart';
import 'package:musicplayer/pages/browse_page.dart';
import 'package:musicplayer/pages/home_page.dart';
import 'package:musicplayer/pages/music_list.dart';
import 'package:musicplayer/pages/music_player.dart';
import 'package:musicplayer/pages/radio.dart';
import 'package:musicplayer/pages/search_page.dart';

import 'pages/library_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:  ColorScheme.dark(),
          scaffoldBackgroundColor:  Color.fromARGB(255, 33, 33, 36),
          appBarTheme:  AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/firstpage',
      routes: {
        '/list_test': (context) =>  ListTest(),
        '/firstpage': (context) => FirstPage(),
        '/browse': (context) =>  BrowsePage(),
        '/radio': (context) =>  RadioPage(),
        '/library': (context) =>  LibraryPage(),
        '/search': (context) =>  SearchPage(),
        '/home': (context) =>  HomePage(),
        '/album': (context) =>  AlbumPage(),
        '/artist': (context) =>  ArtistPage(),
        '/artistlist': (context) =>  ArtistList(),
        '/musiclist': (context) =>  MusicList(),
        '/player': (context) =>  MusicPlayer()
      },
    );
  }
}
