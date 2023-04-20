import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    textButtonTheme: const TextButtonThemeData(style:ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.pinkAccent))),
    elevatedButtonTheme: const ElevatedButtonThemeData(style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent)))
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const Home(),
    '/location': (context) => const ChooseLocation(),
  },
));

