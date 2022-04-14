import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/data/routing_data.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class LibraryStructureB extends StatefulWidget {
  const LibraryStructureB({Key? key}) : super(key: key);

  @override
  _LibraryStructureStateB createState() => _LibraryStructureStateB();
}

class _LibraryStructureStateB extends State<LibraryStructureB> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;
  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep('empty');
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
                            color: StructureData.colorTeen,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.smallRoomTeenClubHall;
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
                                        StructureData.smallRoomTeenClubHall),
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
                            StructureData.teenBookmark,
                            width: 260,
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
                                    StructureData.smallRoomTeenClubHeader,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    StructureData.smallRoomTeenClub,
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
                            color: StructureData.colorBlue,
                          ),
                        ),
                        Positioned(
                          top: rectangleSide * 0.025,
                          left: rectangleSide * 0.025,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPreview = !_showPreview;
                                _image = StructureData.experimentalStationHall;
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
                                        StructureData.experimentalStationHall),
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
                            StructureData.blueBookmark,
                            width: 440,
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
                                    StructureData.experimentalStationHeader,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    StructureData.experimentalStation,
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
            top: 1000,
            left: 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      textDirection: TextDirection.ltr,
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Positioned(
                          top: 12,
                          left: 15,
                          child: Image.asset(
                            StructureData.whiteBookmark,
                            width: 900,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                            width: 880,
                            height: 350,
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: StructureData.coordinationDepartment,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!),
                                  ),
                                  TextSpan(
                                    text: StructureData
                                        .coordinationDepartmentHeader,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  TextSpan(
                                    text: StructureData.coordinationDepartmentA,
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
            top: 1300,
            left: 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      textDirection: TextDirection.ltr,
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Positioned(
                          top: 12,
                          left: 15,
                          child: Image.asset(
                            StructureData.whiteBookmark,
                            width: 470,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                            width: 880,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StructureData
                                      .informationLibraryDepartmentHeader,
                                  style: GoogleFonts.oswald(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  StructureData.informationLibraryDepartment,
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
