// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/screens/main_screen.dart';
import 'package:provider/provider.dart';

import 'ui/component/widgets/el_libs_qr.dart';
import 'ui/component/widgets/main_menu.dart';
import 'ui/screens/afisha/afisha001.dart';
import 'ui/screens/afisha/afisha002.dart';
import 'ui/screens/afisha/afisha003.dart';
import 'ui/screens/afisha/afisha003a.dart';
import 'ui/screens/afisha/afisha_w01.dart';
import 'ui/screens/afisha/afisha_w01a.dart';
import 'ui/screens/afisha/afisha_w02.dart';
import 'ui/screens/afisha/afisha_w02a.dart';
import 'ui/screens/eLibs/elibs_screen.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
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

  //final String data = GlobalVar.routeMainMenu;
  //get static => null;
  // This widget is the root of your application.
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
