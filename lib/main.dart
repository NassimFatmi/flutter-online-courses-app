import 'package:flutter/material.dart';
import 'package:online_courses_app/screens/explorer.dart';
import 'package:online_courses_app/screens/home.dart';
import 'package:online_courses_app/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/' : (context) =>Loading(),
      '/home' : (context) => Home(),
      '/explore' : (context) => Explorer()
    },
  ));
}
