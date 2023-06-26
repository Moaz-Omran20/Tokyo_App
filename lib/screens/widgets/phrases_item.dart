import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokyo_app/models/phrases_model.dart';

class PhrasesItem extends StatelessWidget {

  PhrasesModel phrasesModel;


  PhrasesItem(this.phrasesModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xFF46A4C9),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 phrasesModel.phraseTokyo,
                  style: const TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                ),
                Text(
                  phrasesModel.phraseEnglish,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                var player = AudioCache(prefix: "assets/sounds/phrases/");
                player.play(phrasesModel.phraseAudioName);
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
