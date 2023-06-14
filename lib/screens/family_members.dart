import 'package:flutter/material.dart';
import 'package:tokyo_app/models/family_model.dart';
import 'package:tokyo_app/screens/widgets/appBar.dart';
import 'package:tokyo_app/screens/widgets/family_item.dart';

class FamilyMembersScreen extends StatelessWidget {

  static const String routeName = "Family";


  List<FamilyModel> familyItem = [
    FamilyModel(
        picture: "assets/images/family_members/family_father.png",
        familyTokyo: "Chichioya",
        familyEnglish: "father",
        familyAudioName: "father.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_daughter.png",
        familyTokyo: "Musume",
        familyEnglish: "daughter",
        familyAudioName: "daughter.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_grandfather.png",
        familyTokyo: "Ojīsan",
        familyEnglish: "grand father",
        familyAudioName: "grand father.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_mother.png",
        familyTokyo: "Hahaoya",
        familyEnglish: "mother",
        familyAudioName: "mother.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_grandmother.png",
        familyTokyo: "O bāchan",
        familyEnglish: "grand mother",
        familyAudioName: "grand mother.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_older_brother.png",
        familyTokyo: "Ani",
        familyEnglish: "older brother",
        familyAudioName: "older bother.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_older_sister.png",
        familyTokyo: "Ane",
        familyEnglish: "older sister",
        familyAudioName: "older sister.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_son.png",
        familyTokyo: "Musuko",
        familyEnglish: "son",
        familyAudioName: "son.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_younger_brother.png",
        familyTokyo: "Otōto",
        familyEnglish: "younger brother",
        familyAudioName: "younger brohter.wav"),
    FamilyModel(
        picture: "assets/images/family_members/family_younger_sister.png",
        familyTokyo: "Imōto",
        familyEnglish: "younger sister",
        familyAudioName: "younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Family Members"),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FamilyItem(familyItem[index]);
        },
        itemCount: familyItem.length,
      ),
    );
  }
}
