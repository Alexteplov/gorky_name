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

class BookCollectionHistoryA extends StatefulWidget {
  const BookCollectionHistoryA({Key? key}) : super(key: key);

  @override
  _BookCollectionHistoryAState createState() => _BookCollectionHistoryAState();
}

class _BookCollectionHistoryAState extends State<BookCollectionHistoryA> {
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
                                _image = BooksCollectionData.imgScena;
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
                                        BooksCollectionData.imgScena),
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
                              width: 820,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Петр Воротынцев : На сцене : история театра, 6+ Издательство : Пешком в историю, 2020г.',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Представьте, скоро начнется представление. Люди торопятся в театр. Кто-то с работы, кто-то из дома, а кто-то даже из другого города. Они сдают вещи и одежду в гардероб, берут бинокли, если места далеко от сцены и проходят в зал. Никакого волшебства,',
                                    textAlign: TextAlign.justify,
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
                SizedBox(
                  width: 1040,
                  height: 500,
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          '''правда? Но вот гаснет свет и поднимается занавес, в полном зале воцаряется тишина – напряженная, тугая, звенящая. Совсем не такая, как бывает в пустом зале. Это тишина единения, когда для тех, кто на сцене, и тех, кто сидит в креслах, нет ничего важнее происходящего в эту секунду. Это и есть настоящее волшебство театра. Для этого он и существует.\n
    Эта книга о театре, о его устройстве и истории. С чего начался театр и как он менялся со временем? Какие виды искусства объединил он в себе и какие формы принимал? Почему театр живет и развивается больше 2000 лет?\n\n''',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /* ******************************** */
          Positioned(
            top: 810,
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
                                _image = BooksCollectionData.imgDay;
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
                                        AssetImage(BooksCollectionData.imgDay),
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
                              width: 820,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Дюкато Флоранс : День в музее, 6+ Издательство : Пешком в историю, 2014г.',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Музей – это целый мир! Какие бывают музеи и что в них можно найти? Какие сокровища хранятся в музеях? Можно ли трогать музейные экспонаты руками? Кто дарит музею подарки? Что происходит в хранилищах музея? Как собрать свою собственную коллекцию или создать шедевр?',
                                    textAlign: TextAlign.justify,
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
                SizedBox(
                  width: 1040,
                  height: 500,
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          '''    Герои книги Клара и Ян приглашают в большое увлекательное музейное путешествие, где вы станете свидетелем настоящего ограбления, посетите музей-корабль, всей семьей сыграете в мини-викторину и сделаете рамку для шедевра своими руками!\n\n''',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text: '    В путь!',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
/****************** */
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
