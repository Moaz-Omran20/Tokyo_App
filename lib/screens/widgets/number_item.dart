import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../models/numbers_model.dart';

class NumberItem extends StatelessWidget {
  NumbersModel numbersModel;

  NumberItem(this.numbersModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8942D),
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFEF3D7),
            height: 100,
            width: 90,
            child: Image.asset(
              numbersModel.picture,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(
                  numbersModel.numberTokyo,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  numbersModel.numberEnglish,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                var player = AudioCache(prefix: "assets/sounds/numbers/");
                player.play(numbersModel.numberAudioName);
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
