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

class StaffDepartmentFond extends StatefulWidget {
  const StaffDepartmentFond({Key? key}) : super(key: key);

  @override
  _StaffDepartmentFondState createState() => _StaffDepartmentFondState();
}

class _StaffDepartmentFondState extends State<StaffDepartmentFond> {
  bool _showPreview = false;
  final ScrollController _scrollController = ScrollController();
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 320;
  static double hSingleChV = 2400;

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep('empty');
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
                                      'Габитова Елена Насрулловна',
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
                                            'Библиотекарь отдела формирования и организации фонда ЦГДБ им. А. М. Горького.\n\n',
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
                                                " – Челябинская государственная академия культуры и искусства, 2003 год (специальность – библиотекарь-библиограф).\n\n",
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
                                            text: " – 17 лет.",
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
                                " – программа литературного развития дошкольников «Первые шаги в книжном мире».",
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
                                      'Ромашкина Елена Николаевна',
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
                                            'Методист координационно-методического отдела ЦГДБ им. А. М. Горького.\n\n',
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
                                                " – Костанайский государственный университет, факультет иностранных языков (специальность – учитель английского и казахского языков).\n\n",
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
                                            text: " – 10 лет.",
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
                                " – «Библиотека в сети», «Библиотечные квесты», «Игры нашего стола».",
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
                                      'Сафонова Наталья Константиновна',
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
                                            'Главный библиотекарь по научно-методической работе ЦГДБ им. А. М. Горького, кандидат педагогических наук, лауреат Премии Законодательного Собрания Челябинской области «За заслуги в области культуры».\n',
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
                                                " – Челябинский государственный институт культуры, 1977 год (специальность – библиотекарь-библиограф).\n",
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
                                            text: " – 35 лет.",
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
                                " – концепция организации мероприятий по повышению квалификации сотрудников МКУК ЦСДБ г. Челябинска; проект «Библиофорум: «Семья и книга: объединенные чтением», городская программа «Чтение – дело семейное», программа «Маленький принц» по работе с детьми ОВЗ.",
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
                                      'Удалова Анастасия Владимировна',
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
                                            'Заведующий координационно-методическим отделом ЦГДБ им. А. М. Горького.\n\n',
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
                                                " – Челябинская государственная академия культуры и искусства, 2001 год (специальность – книговед-маркетолог).\n\n",
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
                                            text: " – 17 лет.",
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
                                " – международный конкурс выразительного чтения «Читаем произведения венгерских авторов»; внедрение новой формы отчетности МКУК ЦСДБ в google – формате; концепция организации мероприятий по повышению квалификации сотрудников МКУК ЦСДБ г. Челябинска.",
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
