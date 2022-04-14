// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/application.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RoutingData(context)),
      ],
      child: const Application(),
    );
  }
}
