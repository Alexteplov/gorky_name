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

class BookCollectionRussia extends StatefulWidget {
  const BookCollectionRussia({Key? key}) : super(key: key);

  @override
  _BookCollectionRussiaState createState() => _BookCollectionRussiaState();
}

class _BookCollectionRussiaState extends State<BookCollectionRussia> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;

  @override
  Widget build(BuildContext context) {
    context
        .read<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeBookCollectionRussiaA);
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
                                _image = BooksCollectionData.imgOldRoom;
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
                                        BooksCollectionData.imgOldRoom),
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
                                    'Литвина Александра и Десницкая Аня : История старой квартиры,  6+ Издательство: Самокат, 2017г.',
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
                                    'Книга А. Литвиной  «История старой квартиры» стала событием в российской детской литературе сезона 2017-2018 года. Книга получила прекрасные отзывы, с интересом воспринята читающей публикой, активно взята в разработку многими детскими',
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
                  height: 650,
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: '''библиотеками России. 
    Книга уже отмечена многими наградами – стала лауреатом премии «Ревизор-2017, отмечена «Золотым яблоком» на самом представительном иллюстраторском форуме, Биеннале иллюстраторов в Братиславе, книга переведена на  другие языки. \n
    Авторы видят главную задачу своей книги в том, чтобы дать детям и взрослым внутри семьи содержательное пространство для разговора: «Нам хочется, чтобы люди взяли в руки нашу книгу и нашли, о чем поговорить с ребенком, пока он еще интересуется, а мама помнит и знает». Авторы призывают культивировать ауру «семейного тепла и преемственности…, тонкие нити общих воспоминаний, историй, культурных традиций».\n
    На единение над книгой ребенка и взрослого работает здесь все – и визуальный ряд, и текст. Рассказывают здесь не только герои, но и предметы, вещи: мебель, одежда, посуда, книги – все несет на себе отпечаток времени, следы эпохи. Уже на форзаце и авантитуле встречаются коллажи из множества документов: фотографий, бланков телеграмм, ученического табеля, газетных вырезок, надписанных конвертов и открыток, афиш и т.д. Это все – как дверь в иное временное пространство, когда ощутимо ощущаешь знобкое дыхание другого мира. Текст книги также апеллирует к совместности. А. Литвина говорит: «Я старалась, чтобы в тексте тоже были приметы времени – какие-нибудь характерные словечки или манера выражаться, чтобы не только рисунки выражали эпоху».
\n\n''',
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
