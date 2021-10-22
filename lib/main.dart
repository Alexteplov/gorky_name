// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RoutingData()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void goFullScreen() {
    document.documentElement!.requestFullscreen();
  }

  void exitFullScreen() {
    document.exitFullscreen();
  }

  @override
  Widget build(BuildContext context) {
    //goFullScreen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GlobalVar.nameLib,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black87,
                textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 52))),
      ),
      home: const MyHomePage(),
    );
  }
}
