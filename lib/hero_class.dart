import 'package:flutter/material.dart';

class HeroClass {
  const HeroClass(
      {required this.title,
      required this.gold,
      required this.kills,
      required this.level,
      required this.wins,
      required this.losses,
      required this.imageFile});

  final String title;
  final int gold;
  final int level;
  final int kills;
  final int wins;
  final int losses;
  final String imageFile;

  calculateWinPercentage() {
    return ((wins / (wins + losses)) * 100).round();
  }

  getHeroImage() {
    return Image.asset(imageFile, fit: BoxFit.fitWidth);
  }
}
