// ignore_for_file: unnecessary_const

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/main_menu.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
//import 'package:gorky_name/ui/theme/components_style.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blueGrey.shade200,
      appBar: MainAppBar(context),

      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 5,
              width: Screen.width(context),
              height: Screen.width(context) * 0.29,
              child: Center(
                child: Container(
                  //height: Screen.height(context),
                  width: Screen.width(context),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(GlobalVar.logoImg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //MainMenu(),
                  MenuButton(context: context, nameButton: GlobalVar.structure),
                  const SizedBox(
                    height: 20,
                  ),
                  MenuButton(
                      context: context,
                      nameButton: GlobalVar.billboard,
                      route: GlobalVar.routeAfisha),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
