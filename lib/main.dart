import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/screens/afisha/afisha001.dart';
import 'package:gorky_name/ui/screens/main_screen.dart';
import 'package:gorky_name/ui/theme/const_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //get static => null;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GlobalVar.nameLib,
      initialRoute: '/',

      routes: {
        '/': (context) => const MyHomePage(),
        '/afisha': (context) => Afisha(),
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
