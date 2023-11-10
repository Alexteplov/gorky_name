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
  static double hSingleChV = 4920;
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
              /*Аишева*/
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
                                    _image = StaffData.staffDepReadersAish;

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
                                            StaffData.staffDepReadersAish),
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
                                        'Аишева Азиза Дмитриевна ',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А.М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " - студент Южно-Уральского государственного университета, факультет журналистики\n \n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – менее года.",
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
                          text: 'Реализованные проекты',
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
                                  " – организация книжного клуба «Вне сети»; разработка и проведение занятий по программе «В копилку юного актера»",
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
/*Алферова*/
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
                                    _image = StaffData.staffDepReadersAlf;

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
                                            StaffData.staffDepReadersAlf),
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
                                        'Алфёрова Анастасия Сергеевна',
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
                                              'Заведующий сектором отдела работы с читателями ЦГДБ им. А.М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " - Челябинский государственный институт культуры, 2019\n\n",
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
                                                  "Стаж работы в библиотечной отрасли - 3 года",
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
                          text: 'Реализованные проекты',
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
                                  "–  участие в реализации программ «Эко что-то» и «Навигатор в мире профессий»",
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
              /* ******************************** +Григорьева Наталья Евгеньевна*/
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
                                    _image = StaffData.staffDepReadersGri;

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
                                            StaffData.staffDepReadersGri),
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
                                        'Григорьева Наталья Евгеньевна',
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
                                              'Заведующий сектором отдела работы с читателями ЦГДБ им. А.М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " - Московский педагогический государственный университет, 2006\n\n",
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
                                                  "Стаж работы в библиотечной отрасли - 6 лет",
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
                          text: 'Реализованные проекты',
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
                                  "–  участие в реализации проекта «Библионяня»; участие в реализации программы «РасЧитайка",
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
                                    _image = StaffData.staffDepReadersMel;

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
                                            StaffData.staffDepReadersMel),
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
                                        'Мелехова Марина Геннадьевна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А. М. Горького.\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Магнитогорский государственный педагогический институт, 1997 г.\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – менее года.",
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
                          text: 'Реализованные проекты',
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
                                  " – участие в реализации проекта «Библионяня»; участие в реализации программы «РасЧитайка»; разработка и проведение занятий по программе «Юный конструктор»",
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
              ////***************************** Насырова*/
              Positioned(
                top: 2080,
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
                                        'Насырова Ольга Сергеевна',
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
                                              'Заведующий сектором отдела работы с читателями старшего школьного возраста ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинский государственный университет, 2006 год (специальность – учитель русского языка и литературы).\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 13 лет.",
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
                          text: 'Реализованные проекты',
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
                                  " – «Молодежный перекресток», «Правовой лабиринт», «Все в сеть» (курсы компьютерной грамотности),  «Стиль жизни-здоровье».",
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
////***************************** Обвинцева*/
              Positioned(
                top: 2550,
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
                                    _image = StaffData.staffDepReadersObv;

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
                                            StaffData.staffDepReadersObv),
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
                                        'Обвинцева Марина Михайловна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " –  Южно-Уральский государственный институт искусств имени ПИ. Чайковского, 2023\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – менее года.",
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
                          text: 'Реализованные проекты',
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
                                  " – Проведение творческих мастер-классов по рисованию.",
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
              ////***************************** Пертен*/
              Positioned(
                top: 3000,
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
                                    _image = StaffData.staffDepReadersPer;

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
                                            StaffData.staffDepReadersPer),
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
                                        'Пертэн Ксения Леонидовна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А.М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " - Уральский государственный университет физической культуры, 2007; Аспирантура Уральского государственного университета физической культуры, 2013, кандидат педагогических наук\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " - менее года.",
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
                          text: 'Реализованные проекты',
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
                                  " - разработка и проведение занятий по программе «Библиотечная лаборатория «Научно-нескучно»\n",
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
              /* ******************************** */
/*
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
                                        'Кунаккильдина Ульяна Ханнановна',
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
                                              'Заведующий сектором отдела работы с читателями ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинская государственная академия культуры и искусства, 2008 год (специальность – библиотекарь-библиограф).\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 12 лет.",
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
                          text: 'Реализованные проекты',
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
                              text: " – «Дети в Интернете», «КиберЗнайка».",
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
*/
              ////***************************** */
              /* ******************************** */
              /* ******************************** */
              /* просвирину просто скрыть
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
                                        'Просвирина Ольга Яковлевна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинский государственный педагогический университет, 2007 год (специальность - педагог-психолог).\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 3 года.",
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
                          text: 'Реализованные проекты',
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
                                  " – кружок декоративно-прикладного творчества для дошкольников и младших школьников, участие в проектах «Библионяня», «Дети понедельника», «Первые шаги в книжном мире».",
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
              */
              ////***************************** */
              /* ******************************** */
              /*
              Positioned(
                top: 3050,
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
                                        'Рябченко Ксения Ивановна',
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
                                              'Заведующий сектором отдела работы с читателями ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинская государственная академия культуры и искусства, 2015 год (специальность - музейное дело и музеология).\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 3 года.",
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
                          text: 'Реализованные проекты',
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
                                  " - проект «Библионяня», «Библиотечные экспозиции».",
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
              */
              ////***************************** */
              /* ******************************** */
              Positioned(
                top: 3430,
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
                                        'Урушева Юлия Геннадьевна',
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
                                              'Заведующий отделом работы с читателями дошкольного и младшего школьного возраста ЦГДБ им. А. М. Горького, лауреат премии «Золотая лира» для работников культуры г. Челябинска.\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинский государственный институт искусства и культуры, 1992 год (специальность – библиотекарь-библиограф).\n\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 34 года.",
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
                          text: 'Реализованные проекты',
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
                                  " – программа литературного развития дошкольников «Первые шаги в книжном мире», проекты «Библионяня», «Библиопродлёнка».",
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
                top: 3910,
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
                                        'Хижняк Наталья Александровна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А. М. Горького. \n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " –  Костанайский социально-технический университет, 2006 год (специальность – учитель биологии). 2020/2021 гг. Челябинский государственный институт культуры Программа профессиональной переподготовки «Библиотечно-информационная деятельность».\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – 1 год.",
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
                          text: 'Реализованные проекты',
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
                                  " – участие в проектах «Библионяня», «Библиопродлёнка».",
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
/*
              Positioned(
                top: 4550,
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
                                        'Щёголева Наталья Сергеевна',
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
                                              'Библиотекарь отдела работы с читателями ЦГДБ им. А.М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                          text: 'Реализованные проекты',
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
*/
              /* ******************************** */
              Positioned(
                top: 4380,
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
                                    _image = StaffData.staffDepReadersYus;

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
                                            StaffData.staffDepReadersYus),
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
                                        'Юсупова Инна Сергеевна',
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
                                              'Главный библиотекарь отдела работы с читателями ЦГДБ им. А. М. Горького.\n\n',
                                          style: GoogleFonts.oswald(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.black87)),
                                          children: [
                                            TextSpan(
                                              text: "Образование",
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
                                                  " – Челябинский государственный педагогический университет, 2006.\n",
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
                                                  "Стаж работы в библиотечной отрасли",
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
                                              text: " – менее года.",
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
                          text: 'Реализованные проекты',
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
                                  " – участие в реализации проекта «Библионяня»;  разработка и проведение занятий по программам «Сказка на ладошке», «Мастерим из фетра»",
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
