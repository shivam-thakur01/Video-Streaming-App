import 'package:d2c_appathon/widgets/videoplayer.dart';
import 'package:flutter/material.dart';

class VideoDisplayer extends StatefulWidget {
  final String id;
  final String url;
  final String videoId;
  final String title;
  final int index;

  VideoDisplayer(
    this.id,
    this.url,
    this.videoId,
    this.title,
    this.index,
  );

  @override
  _VideoDisplayerState createState() => _VideoDisplayerState();
}

class _VideoDisplayerState extends State<VideoDisplayer> {
  @override
  Widget build(BuildContext context) {
    String convertedId =
        'https://img.youtube.com/vi/' + widget.videoId + "/0.jpg";
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width*0.7,
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => VideoPlayer(
                    url: widget.url,
                  ))),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: GridTile(
            child: Image(
                  image: NetworkImage(convertedId),
                  fit: BoxFit.fitWidth,
                ),
            footer: GridTileBar(backgroundColor: Colors.black54,
            title: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 15,),textAlign: TextAlign.center,
                ),
            ),
          ),
          
        ),
      ),
    );
  }
}