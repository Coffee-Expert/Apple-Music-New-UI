// ignore_for_file: unnecessary_null_comparison

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:musicplayer/lists_constants.dart';

class MusicPlayer extends StatefulWidget {
  MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  //variable for music audioPlayer
  final AudioPlayer audioPlayer = AudioPlayer();
  PaletteGenerator? paletteGenerator;
  List<Color> colors = [Colors.white, Colors.black];
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int currentIndex = 0;

  //implement init state
  @override
  void initState() {
    super.initState();
    _updatePaletteGenerator(currentIndex);
    changeImage(currentIndex);

    // List<Color> color1 = [];
    // List<Color> color2 = [];
    audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed) {
        // Handle completion
      }
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final routes =
          ModalRoute.of(context)?.settings.arguments as Map<String, int>;
      if (routes != null && routes.containsKey('index')) {
        setState(() {
          currentIndex = routes['index']!;
        });
        _loadSong(currentIndex); // Load the song based on the index
      }
    });
  }

  // @override
  // void dispose() {
  //   audioPlayer.dispose();
  //   super.dispose();
  // }
  void changeImage(int newIndex) async {
    // Update the current index to the new index
    setState(() {
      currentIndex = newIndex;
    });

    // Call _updatePaletteGenerator to update the colors based on the new image
    await _updatePaletteGenerator(currentIndex);
  }

  Future<void> _updatePaletteGenerator(int index) async {
    if (index == null) return; // Ensure we have a current index
    final String imageUrl = constants.song[index]['image']!;
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(imageUrl),
      size: Size(200, 200),
    );
    if (paletteGenerator != null && paletteGenerator!.colors.isNotEmpty) {
      Color color1 = paletteGenerator!.dominantColor?.color ?? colors[0];
      Color color2 = paletteGenerator!.mutedColor?.color ?? colors[1];
      setState(() {
        colors = [color1, color2];
      });
    }
  }

  void _loadSong(int index) async {
    await audioPlayer.setSourceUrl(constants.song[index]['source']);
    // Additional code to play the song right after loading if needed
    if (!isPlaying) {
      audioPlayer.play(UrlSource(constants.song[index]['source']));
      await _updatePaletteGenerator(index);
    }
  }

  String formatTime(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 500,
        leading: GestureDetector(
          onVerticalDragDown: (details) {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.horizontal_rule_rounded,
            size: 70,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),

            // height: 500,
            // width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(97, 0, 0, 0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.network(
                      constants.song[currentIndex]['image'],
                      height: 350,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  // color: Color.fromARGB(255, 13, 0, 132),
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.blue,
                        width: 270,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              constants.song[currentIndex]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(constants.song[currentIndex]['artist']),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.amber,
                        margin: EdgeInsets.only(right: 22),
                        child: Row(
                          children: [
                            // Padding(padding: EdgeInsets.only(right: 10)),
                            Icon(
                              Icons.favorite_outline_rounded,
                              size: 33,
                              color: Color.fromARGB(223, 228, 228, 228),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(158, 136, 136, 136)),
                              // color: Colors.black12,
                              child: Icon(
                                Icons.more_horiz_rounded,
                                size: 29,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.amber,
                  height: 20,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 5.0,
                      trackShape: RoundedRectSliderTrackShape(),
                      activeTrackColor:
                          Color.fromARGB(255, 233, 233, 233),
                      inactiveTrackColor: Color.fromARGB(255, 80, 80, 80),
                      thumbShape: RoundSliderThumbShape(
                        elevation: 0,
                        pressedElevation: 0,
                      ),
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      activeTickMarkColor: Colors.transparent,
                      disabledThumbColor: Colors.transparent,
                      valueIndicatorColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      disabledActiveTrackColor: Colors.transparent,
                      secondaryActiveTrackColor: Colors.transparent,
                      valueIndicatorStrokeColor: Colors.transparent,
                      disabledInactiveTrackColor: Colors.transparent,
                      disabledActiveTickMarkColor: Colors.transparent,
                      overlappingShapeStrokeColor: Colors.transparent,
                      disabledInactiveTickMarkColor: Colors.transparent,
                      disabledSecondaryActiveTrackColor: Colors.transparent,
                    ),
                    child: Slider(
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds
                          .clamp(0, duration.inSeconds)
                          .toDouble(),
                      onChanged: (value) {
                        final newPosition = Duration(seconds: value.toInt());
                        audioPlayer.seek(newPosition);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 22, right: 22),
                  // color: Colors.indigo,
                  // width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                      Text(
                        formatTime(position),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(formatTime(duration - position),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.fast_rewind_rounded,
                        size: 70,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: currentIndex > 0
                          ? () {
                              setState(() {
                                currentIndex--; // Decrement the current index
                              });
                              _loadSong(currentIndex);
                            }
                          : null,
                    ),
                    IconButton(
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                        size: 70,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () {
                        if (isPlaying) {
                          audioPlayer.pause();
                        } else {
                          audioPlayer.play(UrlSource(
                              constants.song[currentIndex]['source']));
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.fast_forward_rounded,
                        size: 70,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: currentIndex < constants.song.length - 1
                          ? () {
                              setState(() {
                                currentIndex++; // Increment the current index
                              });
                              _loadSong(currentIndex);
                            }
                          : null,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.bluetooth,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text("Kevin's Airpods Pro"),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.queue_music,
                        size: 35,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
