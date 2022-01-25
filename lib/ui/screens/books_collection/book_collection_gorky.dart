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

class BookCollectionGorky extends StatefulWidget {
  const BookCollectionGorky({Key? key}) : super(key: key);

  @override
  _BookCollectionGorkyState createState() => _BookCollectionGorkyState();
}

class _BookCollectionGorkyState extends State<BookCollectionGorky> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;

  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
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
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Отраженье исчезнувших лет…\n',
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                    children: [
                      TextSpan(
                        text:
                            '(обзор редких изданий А. М. Горького\nиз фондов детских библиотек г. Челябинска)',
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
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
