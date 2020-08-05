import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

Widget myapp() {
  
  AudioPlayer fixplayer = new AudioPlayer();
  var player = AudioCache(fixedPlayer: fixplayer);
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
                    'https://i.pinimg.com/originals/fd/49/ee/fd49ee7e110454f1daaf0836d1bd0539.jpg')),
          ),
          Text(
            'Despacito',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),
          ),
          Text(
            'Despacito - Luis Fonsi , Daddy Yankee',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                
                onPressed: () {
                  fixplayer.pause();
                  
                
                },
                child: Icon(Icons.pause),
                color: Colors.greenAccent,
                highlightColor: Colors.blue,
                
                highlightElevation: 10.0,
                
                shape: StadiumBorder(),
              ),
              RaisedButton(
                onPressed: () {
                  
                    player.play('desp.mp3');
                    
                  
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
                  fixplayer.stop();
                 
                
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


/*
Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            if (isPlaying == false) {
              player.play('Naina_(Dangal)_64_Kbps.mp3');
              isPlaying = true;
          
              print(isPlaying);
            
            } else {
              fixplayer.pause();
              isPlaying = false;
              print(isPlaying);
            }
          },
          child: Icon(
            isPlaying ? Icons.pause : Icons.play_arrow,
          ),
          color: Colors.lime,
        ),
        RaisedButton(
          onPressed: () {
            fixplayer.pause();
            isPlaying = false;
            //fixplayer.seek(Duration.zero);
          },
          child: Icon(Icons.stop),
          color: Colors.lime,
        ),
      ],
    ),
*/
