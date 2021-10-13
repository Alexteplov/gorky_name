// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/el_libs_qr.dart';
import 'package:gorky_name/ui/screens/afisha/afisha001.dart';
import 'package:gorky_name/ui/screens/afisha/afisha002.dart';
import 'package:gorky_name/ui/screens/afisha/afisha003.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w01.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w02.dart';
import 'package:gorky_name/ui/screens/eLibs/elibs_screen.dart';
import 'package:gorky_name/ui/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void goFullScreen() {
    document.documentElement!.requestFullscreen();
  }

  void exitFullScreen() {
    document.exitFullscreen();
  }

  //get static => null;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //goFullScreen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GlobalVar.nameLib,
      initialRoute: '/',

      routes: {
        GlobalVar.routeMainMenu: (context) => const MyHomePage(),
        GlobalVar.routeAfisha: (context) => const Afisha(),
        GlobalVar.routeAfisha01: (context) => const AfishaSecond(),
        GlobalVar.routeAfisha02: (context) => const AfishaThird(),
        GlobalVar.routeAfishaW01: (context) => const AfishaSaturday(),
        GlobalVar.routeAfishaW02: (context) => const AfishaSunday(),
        GlobalVar.routeElLibs: (context) => const ElLibs(),
        GlobalVar.routeElLibLitres: (context) => const ElLibsQr(
            nameLib: GlobalVar.elLitress, qrCode: GlobalVar.qrLitress),
        GlobalVar.routeElLibNEB: (context) => const ElLibsQr(
            nameLib: GlobalVar.elNEBFull, qrCode: GlobalVar.qrNEB),
        GlobalVar.routeElLibNEDB: (context) => const ElLibsQr(
            nameLib: GlobalVar.elNEDBFull, qrCode: GlobalVar.qrNEDB),
      },

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
      //home: const MyHomePage(),
    );
  }
}
