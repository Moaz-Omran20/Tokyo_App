import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../models/family_model.dart';
import '../../models/numbers_model.dart';

class FamilyItem extends StatelessWidget {
  FamilyModel familyModel;

  FamilyItem(this.familyModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF517c30),
      child: Row(
        children: [
          Container(
            color: const Color(0xFFfef3d9),
            height: 100,
            width: 90,
            child: Image.asset(
              familyModel.picture,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  familyModel.familyTokyo,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  familyModel.familyEnglish,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                var player = AudioCache(prefix: "assets/sounds/family_members/");
                player.play(familyModel.familyAudioName);
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
