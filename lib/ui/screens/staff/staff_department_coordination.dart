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

class StaffDepartmentCoordination extends StatefulWidget {
  const StaffDepartmentCoordination({Key? key}) : super(key: key);

  @override
  _StaffDepartmentCoordinationState createState() =>
      _StaffDepartmentCoordinationState();
}

class _StaffDepartmentCoordinationState
    extends State<StaffDepartmentCoordination> {
  bool _showPreview = false;
  final ScrollController _scrollController = ScrollController();
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 320;
  static double hSingleChV = 2400;

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            Container(
              height: hSingleChV,
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
              top: 300,
              left: 20,
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
                              color: StructureData.colorWhite,
                            ),
                          ),
                          Positioned(
                            top: rectangleSide * 0.025,
                            left: rectangleSide * 0.025,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPreview = !_showPreview;
                                  _image = StaffData.staffDepCoorBaz;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(StaffData.staffDepCoorBaz),
                                      fit: BoxFit.scaleDown),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '???????????????????????? ???????? ????????????????????',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: StaffData.headerColor),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text:
                                            '???????????????? ????????????????????????????-?????????????????????????? ???????????? ???????? ????. ??. ??. ????????????????.\n\n',
                                        style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: Colors.black87)),
                                        children: [
                                          TextSpan(
                                            text: "??????????????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " ??? ???????????????????? ?????????????????????????????? ?????????????????????? ????????????????????,  2018 ??????.\n\n",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "???????? ???????????? ?? ???????????????????????? ??????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: " ??? 1 ??????.",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1040,
                    height: 650,
                    child: RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: '?????????????????????????? ??????????????',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic),
                        ),
                        children: [
                          TextSpan(
                            text:
                                " ??? ???????????????????? ?? ???????????????????? ?????????? ?????????????????????????? ?? ???????????????????? ????????????.",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.black87,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /* ******************************** */
            Positioned(
              top: 750,
              left: 20,
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
                              color: StructureData.colorWhite,
                            ),
                          ),
                          Positioned(
                            top: rectangleSide * 0.025,
                            left: rectangleSide * 0.025,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPreview = !_showPreview;
                                  _image = StaffData.staffDepCoorRom;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(StaffData.staffDepCoorRom),
                                      fit: BoxFit.scaleDown),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '?????????????????? ?????????? ????????????????????',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: StaffData.headerColor),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text:
                                            '???????????????? ????????????????????????????-?????????????????????????? ???????????? ???????? ????. ??. ??. ????????????????.\n\n',
                                        style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: Colors.black87)),
                                        children: [
                                          TextSpan(
                                            text: "??????????????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " ??? ???????????????????????? ?????????????????????????????? ??????????????????????, ?????????????????? ?????????????????????? ???????????? (?????????????????????????? ??? ?????????????? ?????????????????????? ?? ???????????????????? ????????????).\n\n",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "???????? ???????????? ?? ???????????????????????? ??????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: " ??? 10 ??????.",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1040,
                    height: 650,
                    child: RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: '?????????????????????????? ??????????????',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic),
                        ),
                        children: [
                          TextSpan(
                            text:
                                " ??? ?????????????????????? ?? ??????????, ?????????????????????????? ??????????????, ?????????? ???????????? ????????????.",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.black87,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////***************************** */
/************** */
            Positioned(
              top: 1200,
              left: 20,
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
                              color: StructureData.colorWhite,
                            ),
                          ),
                          Positioned(
                            top: rectangleSide * 0.025,
                            left: rectangleSide * 0.025,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPreview = !_showPreview;
                                  _image = StaffData.staffDepCoorSaf;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(StaffData.staffDepCoorSaf),
                                      fit: BoxFit.scaleDown),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '???????????????? ?????????????? ????????????????????????????',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: StaffData.headerColor),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text:
                                            '?????????????? ???????????????????????? ???? ????????????-???????????????????????? ???????????? ???????? ????. ??. ??. ????????????????, ???????????????? ???????????????????????????? ????????, ?????????????? ???????????? ???????????????????????????????? ???????????????? ?????????????????????? ?????????????? ?????? ?????????????? ?? ?????????????? ??????????????????.\n',
                                        style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: Colors.black87)),
                                        children: [
                                          TextSpan(
                                            text: "??????????????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " ??? ?????????????????????? ?????????????????????????????? ???????????????? ????????????????, 1977 ?????? (?????????????????????????? ??? ????????????????????????-????????????????????).\n",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "???????? ???????????? ?? ???????????????????????? ??????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: " ??? 35 ??????.",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1040,
                    height: 650,
                    child: RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: '?????????????????????????? ??????????????',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic),
                        ),
                        children: [
                          TextSpan(
                            text:
                                " ??? ?????????????????? ?????????????????????? ?????????????????????? ???? ?????????????????? ???????????????????????? ?????????????????????? ???????? ???????? ??. ????????????????????; ???????????? ????????????????????????: ???????????? ?? ??????????: ???????????????????????? ????????????????, ?????????????????? ?????????????????? ?????????????? ??? ???????? ??????????????????, ?????????????????? ???????????????????? ???????????? ???? ???????????? ?? ???????????? ??????.",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.black87,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
/************** */
            Positioned(
              top: 1700,
              left: 20,
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
                              color: StructureData.colorWhite,
                            ),
                          ),
                          Positioned(
                            top: rectangleSide * 0.025,
                            left: rectangleSide * 0.025,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPreview = !_showPreview;
                                  _image = StaffData.staffDepCoorUda;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(StaffData.staffDepCoorUda),
                                      fit: BoxFit.scaleDown),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '?????????????? ?????????????????? ????????????????????????',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: StaffData.headerColor),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text:
                                            '???????????????????? ????????????????????????????-???????????????????????? ?????????????? ???????? ????. ??. ??. ????????????????.\n\n',
                                        style: GoogleFonts.oswald(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: Colors.black87)),
                                        children: [
                                          TextSpan(
                                            text: "??????????????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " ??? ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?? ??????????????????, 2001 ?????? (?????????????????????????? ??? ????????????????-????????????????????).\n\n",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "???????? ???????????? ?? ???????????????????????? ??????????????",
                                            style: GoogleFonts.oswald(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline5!
                                                    .copyWith(
                                                        color: Colors.black87,
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: " ??? 17 ??????.",
                                            style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1040,
                    height: 650,
                    child: RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: '?????????????????????????? ??????????????',
                        style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic),
                        ),
                        children: [
                          TextSpan(
                            text:
                                " ??? ?????????????????????????? ?????????????? ???????????????????????????? ???????????? ?????????????? ???????????????????????? ???????????????????? ????????????????; ?????????????????? ?????????? ?????????? ???????????????????? ???????? ???????? ?? google ??? ??????????????; ?????????????????? ?????????????????????? ?????????????????????? ???? ?????????????????? ???????????????????????? ?????????????????????? ???????? ???????? ??. ????????????????????.",
                            style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.black87,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///******************** */
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
              SizedBox(
                height: Screen.height(context) + _scrollController.offset * 2,
                width: Screen.width(context),
                child: Center(
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
              ),
            ],
          ],
        ),
      ),
    );
  }
}
