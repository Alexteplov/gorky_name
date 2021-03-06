import 'dart:async';
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

class StaffDepartmentReaders extends StatefulWidget {
  const StaffDepartmentReaders({Key? key}) : super(key: key);

  @override
  _StaffDepartmentReadersState createState() => _StaffDepartmentReadersState();
}

class _StaffDepartmentReadersState extends State<StaffDepartmentReaders> {
  final ScrollController _scrollController = ScrollController();
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 320;
  static double hSingleChV = 6000;
  double _hImage = 0;
  //double _hPosition = 1920;

  Future<Size> _calculateImageDimension() {
    Completer<Size> completer = Completer();
    Image image = Image.network(_image);
    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo image, bool synchronousCall) {
          var myImage = image.image;
          Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
          completer.complete(size);
        },
      ),
    );
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: SizedBox(
          height: hSingleChV,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffEmptyWoman;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffEmptyWoman),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????? ?????????????????? ??????????????????',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??.??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: "\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ",
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
                              text: " ",
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersArz;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersArz),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '?????????????????????? ???????? ???????????????????? ',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??.??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ????????-?????????????????? ?????????????????????????????? ??????????????????????, 2016 ??????. 2020/2021 ????. ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?????????????????? ???????????????????????????????? ???????????????????????????? ????????????????????????-???????????????????????????? ??????????????????????????.\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
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
                                  " ??? ?????????????? ?? ?????????????? ?????????????? ???????? ?? ?????????????? ??????????.",
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersBuk;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                  /* print(
                                      'offset =  ${_scrollController.offset} hImage = ${_hImage} screenH = ${Screen.height(context)}'); */
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersBuk),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????? ?????????????? ??????????????????????',
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
                                              '???????????????????? ???????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????.\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ????????-?????????????????? ?????????????????????????????? ??????????????????????, 2008 ??????. ?????????????????? ????????????????????????. ?????????????? ???????????????? ?????????? ?? ????????????????????. 2019/2020 ????. ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?????????????????? ???????????????????????????????? ???????????????????????????? ???????????????????????? - ???????????????????????????? ??????????????????????????.\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 4 ????????.",
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
                                  " ??? ?????????????????????? ???????????? ???????????????????????? ?????????????? ?? ???????????????????? ???????????? ????????????.",
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
              Positioned(
                top: 1650,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffEmptyWoman;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffEmptyWoman),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '?????????????? ?????????? ??????????????????',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??.??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: "\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " - ?????????? ????????.",
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
                              text: " ",
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
                top: 2100,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersZai;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersZai),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '?????????????? ???????????? ??????????????????',
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
                                              '???????????????????? ???????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ???????????????? ?????????? ?? ???????????????????? ??????????????????, (?????????????????????????? ??? ??????????????????), ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?????????????????? ???????????????????????????????? ???????????????????????????? ????????????????????????-???????????????????????????? ?????????????????????????? 250 ??????????, 2018 ??????.\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 9 ??????.",
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
                                  " ???  ???????????????? ???????? ????????????-???????????????????? ???????????????????? ?? ?????????????????? (???????????????????? ??????????????????, ?????????????????????? ????????????????????????, ???????????????????? ???????????????????????????????? ????????????????), ???????????????????????? ?????????????????? ?????????????? ???????????????????????? ??????????, ?????????????????????? ???????????? ???????????????????????? ?????????????? ?? ?????????????????????????????? ?????????????? ????????????????????, ?????????????????? ????????????-???????????????????????????? ????????????????????.",
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
              /* ******************************** */
              Positioned(
                top: 2650,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersKun;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersKun),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '?????????????????????????? ???????????? ????????????????????',
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
                                              '???????????????????? ???????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?? ??????????????????, 2008 ?????? (?????????????????????????? ??? ????????????????????????-????????????????????).\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 12 ??????.",
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
                              text: " ??? ?????????? ?? ????????????????????, ??????????????????????????.",
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
              /* ******************************** */
              Positioned(
                top: 3100,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersNas;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersNas),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????? ?????????? ??????????????????',
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
                                              '???????????????????? ???????????????? ???????????? ???????????? ?? ???????????????????? ???????????????? ?????????????????? ???????????????? ???????? ????. ??. ??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ?????????????????????? ?????????????????????????????? ??????????????????????, 2006 ?????? (?????????????????????????? ??? ?????????????? ???????????????? ?????????? ?? ????????????????????).\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 13 ??????.",
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
                                  " ??? ?????????????????????? ????????????????????????, ?????????????????? ??????????????????, ???????? ?? ?????????? (?????????? ???????????????????????? ??????????????????????),  ???????????? ??????????-??????????????????.",
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
              /* ******************************** */
              Positioned(
                top: 3600,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersPro;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersPro),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????????? ?????????? ??????????????????',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ?????????????????????? ?????????????????????????????? ???????????????????????????? ??????????????????????, 2007 ?????? (?????????????????????????? - ??????????????-????????????????).\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 3 ????????.",
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
                                  " ??? ???????????? ??????????????????????-?????????????????????? ???????????????????? ?????? ???????????????????????? ?? ?????????????? ????????????????????, ?????????????? ?? ???????????????? ????????????????????????, ?????????? ??????????????????????????, ?????????????? ???????? ?? ?????????????? ??????????.",
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
              /* ******************************** */
              Positioned(
                top: 4100,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersRya;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersRya),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????? ???????????? ????????????????',
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
                                              '???????????????????? ???????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?? ??????????????????, 2015 ?????? (?????????????????????????? - ???????????????? ???????? ?? ????????????????????).\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 3 ????????.",
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
                                  " - ???????????? ????????????????????????, ?????????????????????????? ??????????????????????.",
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
              /* ******************************** */
              Positioned(
                top: 4600,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersUru;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersUru),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '?????????????? ???????? ??????????????????????',
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
                                              '???????????????????? ?????????????? ???????????? ?? ???????????????????? ?????????????????????? ?? ???????????????? ?????????????????? ???????????????? ???????? ????. ??. ??. ????????????????, ?????????????? ???????????? ???????????????? ?????????? ?????? ???????????????????? ???????????????? ??. ????????????????????.\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ??? ?????????????????????? ?????????????????????????????? ???????????????? ?????????????????? ?? ????????????????, 1992 ?????? (?????????????????????????? ??? ????????????????????????-????????????????????).\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ??? 34 ????????.",
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
                                  " ??? ?????????????????? ?????????????????????????? ???????????????? ???????????????????????? ?????????????? ???????? ?? ?????????????? ??????????, ?????????????? ????????????????????????, ??????????????????????????????????.",
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
              Positioned(
                top: 5100,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffDepReadersHiz;

                                    //print(
                                    //   'offset = ${_scrollController.offset}');
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffDepReadersHiz),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????? ?????????????? ??????????????????????????',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??. ??. ????????????????. \n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text:
                                                  " ???  ???????????????????????? ??????????????????-?????????????????????? ??????????????????????, 2006 ?????? (?????????????????????????? ??? ?????????????? ????????????????). 2020/2021 ????. ?????????????????????? ?????????????????????????????? ???????????????? ???????????????? ?????????????????? ???????????????????????????????? ???????????????????????????? ????????????????????????-???????????????????????????? ??????????????????????????.\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
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
                                  " ??? ?????????????? ?? ???????????????? ????????????????????????, ??????????????????????????????????.",
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
              Positioned(
                top: 5600,
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
                                onTap: () async {
                                  setState(() {
                                    _showPreview = !_showPreview;
                                    _image = StaffData.staffEmptyWoman;

                                    //print(_showPreview);
                                  });
                                  _hImage = await _calculateImageDimension()
                                      .then((size) => size.height);
                                },
                                child: Container(
                                  width: rectangleSide - (rectangleSide * 0.05),
                                  height:
                                      rectangleSide - (rectangleSide * 0.05),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            StaffData.staffEmptyWoman),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 8),
                              child: SizedBox(
                                  width: 700,
                                  height: 330,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '???????????????? ?????????????? ??????????????????',
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
                                              '???????????????????????? ???????????? ???????????? ?? ???????????????????? ???????? ????. ??.??. ????????????????.\n\n',
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: "\n\n",
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
                                                          fontStyle: FontStyle
                                                              .italic)),
                                            ),
                                            TextSpan(
                                              text: " ",
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
                              text: " ",
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
                Positioned(
                  top: _scrollController.offset > 300
                      ? (Screen.height(context) / 2 +
                          _scrollController.offset * 0.9 -
                          (_hImage > 0 ? _hImage : 0))
                      : (Screen.height(context) / 2 -
                              (_hImage > 0 ? _hImage / 2 : 0)) /
                          2,
                  child: SizedBox(
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
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
