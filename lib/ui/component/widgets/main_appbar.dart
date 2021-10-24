import 'dart:html';

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
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white70,
          centerTitle: true,
          leading: context.read<RoutingData>().isReturnActive()
              ? IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () => context.read<RoutingData>().returnBack,
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
            const CurrentDate(),
          ],
        );
}
