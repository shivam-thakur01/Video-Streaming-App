import 'package:d2c_appathon/widgets/videodisplayer.dart';
import 'package:flutter/material.dart';

import 'models/sectionVideoDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
          // primarySwatch: Colors.deepOrange,
          // accentColor: Colors.amberAccent,
          // canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          // textTheme: ThemeData.dark().textTheme.copyWith(
          //     bodyText1: TextStyle(
          //       color: Color.fromRGBO(20, 51, 51, 1),
          //     ),
          //     bodyText2: TextStyle(
          //       color: Color.fromRGBO(20, 51, 51, 1),
          //     ),
          //     headline6: TextStyle(
          //         fontSize: 19,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: 'RobotoCondensed'))
          ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video Streaming'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text('Motivation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,),)
              ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: section4Data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VideoDisplayer(
                        section4Data[index].id,
                        section4Data[index].videoUrl,
                        section4Data[index].videoid,
                        section4Data[index].title,
                        index);
                  }),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text('Poetry And Story Telling',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,),)
              ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: section1Data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VideoDisplayer(
                        section1Data[index].id,
                        section1Data[index].videoUrl,
                        section1Data[index].videoid,
                        section1Data[index].title,
                        index);
                  }),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text('Comedy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,),)
              ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: section2Data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VideoDisplayer(
                        section2Data[index].id,
                        section2Data[index].videoUrl,
                        section2Data[index].videoid,
                        section2Data[index].title,
                        index);
                  }),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text('Songs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,),)
              ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: section3Data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VideoDisplayer(
                        section3Data[index].id,
                        section3Data[index].videoUrl,
                        section3Data[index].videoid,
                        section3Data[index].title,
                        index);
                  }),
            ),
          ],
        )
      )
    );
  }
}
