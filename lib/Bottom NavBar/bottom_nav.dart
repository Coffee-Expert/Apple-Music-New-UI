import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:musicplayer/pages/browse_page.dart';
import 'package:musicplayer/pages/home_page.dart';
import 'package:musicplayer/pages/library_page.dart';
import 'package:musicplayer/pages/radio.dart';
import 'package:musicplayer/pages/search_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selected_index = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  final List _pages = [
    HomePage(),
    BrowsePage(),
    RadioPage(),
    LibraryPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected_index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Container(
          color: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 65),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.01),

              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _selected_index,
                onTap: _navigateBottomBar,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled, size: 30),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view_rounded, size: 30),
                    label: 'Browse',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sensors, size: 30),
                    label: 'Radio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.subscriptions_rounded, size: 30),
                    label: 'Library',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search, size: 30),
                    label: 'Search',
                  ),
                ],
                elevation: 0,
                selectedItemColor: Color(0xfffc3c44),
                unselectedItemColor: Colors.white,
                showUnselectedLabels: false,
                backgroundColor: Colors.transparent,
                selectedFontSize: 13.0,
                unselectedFontSize: 13.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
