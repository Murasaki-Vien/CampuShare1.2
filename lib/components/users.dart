import 'package:flutter/material.dart';

class User {
  final String userID;
  final String name;
  final String email;

  User({
    required this.userID,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
    'userID': userID,
    'name': name,
    'email': email,
  };

  static User fromJson(Map<String, dynamic> json) => User(
    userID: json['userID'],
    name: json['name'],
    email: json['email'],
  );
}