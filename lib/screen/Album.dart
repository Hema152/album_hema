import 'package:album_hema/servises/network.dart';
import 'package:album_hema/widget/Album.dart';
import 'package:flutter/material.dart';

class AlbumScreens extends StatefulWidget {
  const AlbumScreens({Key? key}) : super(key: key);

  @override
  _AlbumScreensState createState() => _AlbumScreensState();
}

class _AlbumScreensState extends State<AlbumScreens> {
  Future<List<dynamic>>? listOfPhotos;
  @override
  void initState() {
    super.initState();
    listOfPhotos = NetworkHelper().getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Album')),
        body: FutureBuilder <List<dynamic>>(
            future: listOfPhotos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context , index){
                    return AlbumWidget(album: snapshot.data![index]);
                  },

                );
              }
              return Center(child: CircularProgressIndicator());

            }
            )
    );
  }
}
