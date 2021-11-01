import 'package:album_hema/screen/Album.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'album',
      home: AlbumScreens(),
    );
    }
}


