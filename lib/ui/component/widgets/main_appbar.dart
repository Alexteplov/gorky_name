//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/current_date.dart';
import 'package:provider/src/provider.dart';

class MainAppBar extends AppBar {
  final BuildContext context;

  MainAppBar(this.context, {Key? key})
      : super(
          toolbarHeight: 100,
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white70,
          centerTitle: true,
          leading: Container(
            //width: 150,
            //height: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(GlobalVar.logoAppBar),
                    fit: BoxFit.contain)),
            child: const SizedBox(
              height: 100,
              width: 150,
            ),
          ),
          title: Text(
            GlobalVar.nameLib,
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.headline4!),
            textAlign: TextAlign.center,
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            const CurrentDate(),
          ],
        );
}
