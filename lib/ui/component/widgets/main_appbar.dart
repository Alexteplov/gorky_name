import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppBar extends AppBar {
  final BuildContext context;

  MainAppBar(this.context, {Key? key})
      : super(
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white70,
          centerTitle: true,
          leading: Navigator.canPop(context)
              ? IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () {
                    if (Navigator.canPop(context)) Navigator.pop(context);
                  },
                )
              : Container(),
          title: Text(
            GlobalVar.nameLib,
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.headline4!),
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.black87),
              onPressed: () {
                window.close();
                //document.exitFullscreen();

/*                 Future.delayed(const Duration(milliseconds: 1000), () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                }); */
              },
            ),
          ],
        );
}
