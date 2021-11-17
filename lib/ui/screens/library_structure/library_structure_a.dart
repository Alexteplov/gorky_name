import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class LibraryStructureA extends StatefulWidget {
  const LibraryStructureA({Key? key}) : super(key: key);

  @override
  _LibraryStructureStateA createState() => _LibraryStructureStateA();
}

class _LibraryStructureStateA extends State<LibraryStructureA> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;
  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeLibiraryStructureB);
    return SafeArea(
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
          const LibraryLogo(),
          Positioned(
            top: 400,
            left: 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: StructCustomClipper(), // <--
                          child: Container(
                            width: rectangleSide,
                            height: rectangleSide,
                            color: StructureData.colorMaroon,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.freeReadersPlaceHall;
                                //print(_showPreview);
                              });
                            },
                            child: Container(
                              width: rectangleSide - (rectangleSide * 0.05),
                              height: rectangleSide - (rectangleSide * 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        StructureData.freeReadersPlaceHall),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      textDirection: TextDirection.ltr,
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Positioned(
                          top: 12,
                          left: 15,
                          child: Image.asset(
                            StructureData.maroonBookmark,
                            width: 400,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                              width: 680,
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    StructureData.freeReadersPlaceHead,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    StructureData.freeReadersPlace,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          /* ******************************** */
          Positioned(
            top: 700,
            left: 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: StructCustomClipper(), // <--
                          child: Container(
                            width: rectangleSide,
                            height: rectangleSide,
                            color: StructureData.colorOrange,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.silendHoleHall;
                                //print(_showPreview);
                              });
                            },
                            child: Container(
                              width: rectangleSide - (rectangleSide * 0.05),
                              height: rectangleSide - (rectangleSide * 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        StructureData.silendHoleHall),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      textDirection: TextDirection.ltr,
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Positioned(
                          top: 12,
                          left: 15,
                          child: Image.asset(
                            StructureData.orangeBookmark,
                            width: 300,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                            width: 680,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StructureData.silendHoleHeader,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  StructureData.silendHole,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          /* ***************************** */
          Positioned(
            top: 1000,
            left: 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: StructCustomClipper(), // <--
                          child: Container(
                            width: rectangleSide,
                            height: rectangleSide,
                            color: StructureData.colorGreen,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.roomTransformerHall;
                                //print(_showPreview);
                              });
                            },
                            child: Container(
                              width: rectangleSide - (rectangleSide * 0.05),
                              height: rectangleSide - (rectangleSide * 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        StructureData.roomTransformerHall),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      textDirection: TextDirection.ltr,
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Positioned(
                          top: 12,
                          left: 15,
                          child: Image.asset(
                            StructureData.greenBookmark,
                            width: 220,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                            width: 680,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StructureData.roomTransformerHeader,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  StructureData.roomTransformer,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_showPreview) ...[
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPreview = !_showPreview;
                    });
                  },
                  child: Image.asset(
                    _image,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
