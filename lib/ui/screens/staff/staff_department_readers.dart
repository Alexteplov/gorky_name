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

class StaffDepartmentReaders extends StatefulWidget {
  const StaffDepartmentReaders({Key? key}) : super(key: key);

  @override
  _StaffDepartmentReadersState createState() => _StaffDepartmentReadersState();
}

class _StaffDepartmentReadersState extends State<StaffDepartmentReaders> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 320;

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep('empty');
    return SafeArea(
      child: SingleChildScrollView(
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
                                  _image = StaffData.staffEmptyWoman;
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
                                          AssetImage(StaffData.staffEmptyWoman),
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
                                                        fontStyle:
                                                            FontStyle.italic)),
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
                                                        fontStyle:
                                                            FontStyle.italic)),
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
                                  _image = StaffData.staffDepReadersArz;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
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
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Арзамасцева Юлия Михайловна ',
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
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " – Южно-Уральский государственный университет, 2016 год. 2020/2021 гг. Челябинский государственный институт культуры Программа профессиональной переподготовки «Библиотечно-информационная деятельность».\n",
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
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: "– 1 год.",
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
                                " – участие в проекте «Первые шаги в книжном мире».",
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
                              onTap: () {
                                setState(() {
                                  _showPreview = !_showPreview;
                                  _image = StaffData.staffDepReadersBuk;
                                  //print(_showPreview);
                                });
                              },
                              child: Container(
                                width: rectangleSide - (rectangleSide * 0.05),
                                height: rectangleSide - (rectangleSide * 0.05),
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
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: SizedBox(
                                width: 700,
                                height: 330,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Букреева Татьяна Анатольевна',
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
                                            'Заведующий сектором отдела работы с читателями ЦГДБ им. А. М. Горького.\n',
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
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text:
                                                " – Южно-Уральский государственный университет, 2008 год. Факультет журналистики. Кафедра русского языка и литературы. 2019/2020 гг. Челябинский государственный институт культуры Программа профессиональной переподготовки «Библиотечно - информационная деятельность».\n",
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
                                                        fontStyle:
                                                            FontStyle.italic)),
                                          ),
                                          TextSpan(
                                            text: "– 4 года.",
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
                                " – организация работы библиотечных пунктов в отдалённых школах города.",
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
              SizedBox(
                height: Screen.height(context),
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
