import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  dynamic album;
  AlbumWidget({this.album});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(album['title'], style: TextStyle(fontSize: 20)),
          Image.network(album['url'])
        ],
      ),
    );
  }
}
