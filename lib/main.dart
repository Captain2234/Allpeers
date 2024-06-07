import 'package:flutter/material.dart';
// import 'package:loginuicolors/login.dart';
// import 'package:loginuicolors/register.dart';
import 'package:twitter_clone/login.dart';
import 'package:twitter_clone/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
