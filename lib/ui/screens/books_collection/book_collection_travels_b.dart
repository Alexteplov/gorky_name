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

class BookCollectionTravelsB extends StatefulWidget {
  const BookCollectionTravelsB({Key? key}) : super(key: key);

  @override
  _BookCollectionTravelsBState createState() => _BookCollectionTravelsBState();
}

class _BookCollectionTravelsBState extends State<BookCollectionTravelsB> {
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
                                _image = BooksCollectionData.imgCibkov;
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
                                        BooksCollectionData.imgCibkov),
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
                                    'Цыбиков Г. Ц. : Буддист-паломник у святынь Тибета, Издательство: Эксмо; Око, 2014г.',
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
                                    'Путешественник, этнограф, востоковед, буддолог, государственный и общественный деятель Российской империи, СССР и Монголии. Переводчик, профессор ряда университетов Гомбожаб Цыбиков прославился как автор уникального издания',
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
                          '''«Буддист-паломник у святынь Тибета», в котором он описал свою экспедицию 1899 – 1902 гг., когда он провел в Тибете 888 дней.\n
    В оформлении книги использовано свыше 350 уникальных цветных и черно-белых рисунков, картин, карт и фотографий, которые помогают воссоздать неповторимый колорит Тибета во всей его первозданной, тогда еще неведомой миру, красоте.\n\n''',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text:
                              '    «… Подле монастыря сравнительно много хвойного леса, что дает жителям его возможность заниматься столярным мастерством. Весь Цайдам снабжается домашней деревянной утварью почти исключительно отсюда. Материалом для выделывания посуды служит древовидный можжевельник, душистая хвоя которого, как упомянуто выше, идет на воскурение перед буддами, а истолченная древесина составляет главную часть смеси, из коей выделываются курительные свечи (по-тибетски – бой)…»\n\n',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic)),
                        ),
                        TextSpan(
                          text:
                              '    Приятного путешествия в самые удивительные уголки Земли!',
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
