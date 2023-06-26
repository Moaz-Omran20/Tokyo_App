import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokyo_app/models/color_model.dart';

class ColorItem extends StatelessWidget {

  ColorsModel colorsModel;


  ColorItem(this.colorsModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF7C3FA0),
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFEF3D7),
            height: 100,
            width: 90,
            child: Image.asset(
              colorsModel.picture,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  colorsModel.colorTokyo,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  colorsModel.colorEnglish,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                var player = AudioCache(prefix: "assets/sounds/colors/");
                player.play(colorsModel.colorAudioName);
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    ) ;
  }
}
