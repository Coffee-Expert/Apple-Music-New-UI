import 'package:flutter/material.dart';
import 'package:musicplayer/lists_constants.dart';

class ListTest extends StatefulWidget {
  const ListTest({super.key});

  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
        itemCount: constants.TopPicks.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(constants.TopPicks[currentIndex][0]['artist_img']),
              Image.network(constants.TopPicks[currentIndex][index]['image'])
            ],
          );
        },
      )),
    );
  }
}
