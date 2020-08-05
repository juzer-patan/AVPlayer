import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Widget remote() {
  AudioPlayer player = new AudioPlayer();
  
  var design = Container(
    width: double.infinity,
    height: double.infinity,
   
    color: Colors.black87,
    alignment: Alignment.center,
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 25,
            ),
            decoration: BoxDecoration(
    
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4cdb846f-8ca6-4589-90e5-b340a40c6c6b/da5numt-091f1d77-aee2-4ab1-8198-634e4f8851ec.jpg/v1/fill/w_1024,h_1024,q_75,strp/taylor_swift_bad_blood_cover_by_pushpasharma_da5numt-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMDI0IiwicGF0aCI6IlwvZlwvNGNkYjg0NmYtOGNhNi00NTg5LTkwZTUtYjM0MGE0MGM2YzZiXC9kYTVudW10LTA5MWYxZDc3LWFlZTItNGFiMS04MTk4LTYzNGU0Zjg4NTFlYy5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.m7D2AlF0wBSY7qLt7XCVExuNfL2lNOUuXq8m4SLKm-c')),
          ),
          Text(
            'Bad Blood',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
          ),
          Text(
            'Bad Blood - Taylor Swift , Kendrick Lamar',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
          
                onPressed: () {
                  player.pause();

          
                },
                child: Icon(Icons.pause),
                color: Colors.greenAccent,
                highlightColor: Colors.blue,
          
                highlightElevation: 10.0,
          
                shape: StadiumBorder(),
              ),
              RaisedButton(
                onPressed: () {
          
                  player.play('https://raw.githubusercontent.com/juzer-patan/asset/master/Bad%20Blood%20Remix%20.mp3');
                },
                child: Icon(
                  Icons.play_arrow,
                ),
                color: Colors.greenAccent,
                highlightColor: Colors.blue,
          
                highlightElevation: 10.0,
          
                shape: StadiumBorder(),
              ),
              RaisedButton(
          
                onPressed: () {
                  player.stop();
          
                },
                child: Icon(Icons.stop),
                color: Colors.greenAccent,
                highlightColor: Colors.blue,
          
                highlightElevation: 10.0,
          
                shape: StadiumBorder(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
  return design;
}
