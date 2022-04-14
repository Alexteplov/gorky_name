//import 'dart:html';

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/ui/component/widgets/current_date.dart';

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
          leading: GestureDetector(
              onTap: () {},
              child:
                  Image.asset(GlobalVar.logoAppBar, width: 120, height: 100)),
          leadingWidth: 120,
          title: Text(
            GlobalVar.nameLib,
            style: GoogleFonts.oswald(
              textStyle: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black87),
            ),
            textAlign: TextAlign.center,
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            CurrentDate(context: context),
          ],
        );
}
