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

class BookCollectionTravelsA extends StatefulWidget {
  const BookCollectionTravelsA({Key? key}) : super(key: key);

  @override
  _BookCollectionTravelsAState createState() => _BookCollectionTravelsAState();
}

class _BookCollectionTravelsAState extends State<BookCollectionTravelsA> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;

  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeBookCollectionTravelsB);
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
                                _image =
                                    BooksCollectionData.imgGoncharovRecords;
                                //print(_showPreview);
                              });
                            },
                            child: Container(
                              width: rectangleSide - (rectangleSide * 0.05),
                              height: rectangleSide - (rectangleSide * 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(BooksCollectionData
                                        .imgGoncharovRecords),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                              width: 820,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Головнин В. М. : Записки капитана флота, Издательство: Эксмо; Око, 2014г.',
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
                                    'В плеяде российских мореплавателей Василий Михайлович Головнин занимает особое место. Вице-адмирал, член-корреспондент Петербургской академии наук. Он внес значительный вклад во все области военно-морского дела, много сделал для организации и строительства российского флота. Известен как талантливый ученый и',
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
                          '''писатель, воспитал целую плеяду отважных русских мореплавателей: Ф. П. Литке, Ф. П. Врангеля, Ф. Ф. Матюшкина и др.\n
    В книге В. М. Головнин раскрыл загадочный мир Японии и ее обитателей. В оформлении книги использованы редкие иллюстрации, позволяющие взглянуть на описываемые автором страны и народы глазами первооткрывателей.\n\n''',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text:
                              '    «… Но самый величайший пример человеколюбия и добродетели нашли мы в одном солдате. Который был старший над внутренней стражей в ту ночь, когда мы ушли. Он находлся при отряде, посланном за нами в погоню, но уже не в звании воина, а простого работника; он был с нами с той минуты, как нас взяли, и до прихода в Матсмай. Небритая борода и волосы на голове, а также бледное лицо показывали грусть его, которой мы были причиной, но при первом свидании с нами он поклонился нам учтиво, не показав ни малейшего виду гнева или ненависти, и во всю дорогу услуживал нам чем мог весьма охотно… Поступками своими он трогал нас до слез, имя сего достойного человека – Кана…»',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic)),
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
            top: 1050,
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
                                _image = BooksCollectionData.imgKrasheninnikov;
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
                                        BooksCollectionData.imgKrasheninnikov),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8),
                          child: SizedBox(
                              width: 820,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Крашенинников С. П. : Описание земли Камчатки,  Издательство: Эксмо; Око, 2014г.',
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
                                    '«Описание земли Камчатки» - первый российский научный труд, который немедленно после выхода из печати был переведен на большинство европейских языков и вызвал огромный интерес у ученых и читающей публики.',
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
                          '''    На то, чтобы этот труд увидел свет, его автор положил жизнь: отправившись из Санкт-Петербурга в научную экспедицию юным студентом, Крашенинников вернулся в столицу только через десять лет – и еще двенадцать, до последнего своего дня, готовил книгу к изданию.
    В книге собраны захватывающие, невероятные, но, тем не менее, абсолютно достоверные описания всего, что Крашенинников встретил и изучил во время своего путешествия: от гигантских трав и горячих гейзеров Камчатки до жизни и языка камчадалов.\n\n''',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text:
                              '    «… В местах, отдаленных от моря, а особливо около Верхнего Камчатского острога, летняя погода бывает совсем особливая: ибо с апреля до половины июля продолжается ясная погода, после долгоденствия продолжаются дожди до исхода августа. Зимою выпадают преглубокие снега. Жестоких ветров мало случается, и утихают скоро. И хотя там не больше снегу идет, как и на Большой реке, однако ж оный бывает глубже, для того что гораздо рыхлее…»',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic)),
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
