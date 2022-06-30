import 'package:flutter/material.dart';

class User {
  late final String Username;
  late final String players;
  late final String coaches;
  late final String GamesName;
  late final String CenterHead;
  late final String Location;
  User({
    required this.Username,
    required this.players,
    required this.coaches,
    required this.CenterHead,
    required this.GamesName,
    required this.Location,
  });
}
