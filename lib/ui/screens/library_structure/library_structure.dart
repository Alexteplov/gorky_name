import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';

import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class LibraryStructure extends StatefulWidget {
  const LibraryStructure({Key? key}) : super(key: key);

  @override
  _LibraryStructureState createState() => _LibraryStructureState();
}

class _LibraryStructureState extends State<LibraryStructure> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;
  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeLibiraryStructureA);
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
                            color: StructureData.colorRed,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.meetingEventHall;
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
                                        StructureData.meetingEventHall),
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
                            StructureData.redBookmark,
                            width: 240,
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
                                    StructureData.roomMeetingEventHead,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    StructureData.roomMeetingEvent,
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
                            color: StructureData.colorLiteBlue,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.smallKidsHall;
                                //print(_showPreview);
                              });
                            },
                            child: Container(
                              width: rectangleSide - (rectangleSide * 0.05),
                              height: rectangleSide - (rectangleSide * 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image:
                                        AssetImage(StructureData.smallKidsHall),
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
                            StructureData.liteBlueBookmark,
                            width: 580,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                            width: 680,
                            height: 350,
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: StructureData.roomReadersHead,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  TextSpan(
                                    text: StructureData.roomReaders,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!),
                                  ),
                                ],
                              ),
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
            top: 1100,
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
                            color: StructureData.colorYellow,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.sectorOperatinsInfoHall;
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
                                        StructureData.sectorOperatinsInfoHall),
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
                            StructureData.yellowBookmark,
                            width: 360,
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
                                  StructureData.sectorOperatinsInfoHead,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  StructureData.sectorOperatinsInfo,
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
