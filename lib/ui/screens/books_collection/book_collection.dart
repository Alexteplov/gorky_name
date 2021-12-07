import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class BookCollection extends StatefulWidget {
  const BookCollection({Key? key}) : super(key: key);

  @override
  _BookCollectionState createState() => _BookCollectionState();
}

class _BookCollectionState extends State<BookCollection> {
  //bool _showPreview = false;
  //String _image = GlobalVar.bgImgAfishaWeekendsW;
  //static double rectangleSide = 200;
  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeLibiraryStructureA);
    return SafeArea(
      child: DropCapText(
        'Lorem ipsum **dolor sit amet, consectetur adipiscing elit, ++sed do eiusmod++ tempor incididunt** ut labore et _dolore magna aliqua_.',
        parseInlineMarkdown: true,
        mode: DropCapMode.aside,
        dropCapStyle: const TextStyle(
            fontSize: 100, fontWeight: FontWeight.bold, color: Colors.green),
        dropCapPadding: const EdgeInsets.only(right: 19.0),
        style: const TextStyle(fontSize: 18.0, height: 1.5),
      ),
    );
  }
}
