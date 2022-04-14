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

class BookCollectionTravels extends StatefulWidget {
  const BookCollectionTravels({Key? key}) : super(key: key);

  @override
  _BookCollectionTravelsState createState() => _BookCollectionTravelsState();
}

class _BookCollectionTravelsState extends State<BookCollectionTravels> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;

  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeBookCollectionTravelsA);
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
            child: SizedBox(
              width: 1040,
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: '    Проект ',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text: '«Великие русские путешественники»',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                        ),
                        const TextSpan(
                          text:
                              ''' воплощен в жизнь благодаря Русскому географическому обществу.\n
    Первая серия книг состояла из 15 томов. Свет увидели необыкновеннные истории путешествий Н.М. Пржевальского, Г.Ц. Цыбикова, П.П. Семёнова-Тян-Шанского, Н.Н. Миклухо-Маклая, Ф.Ф. Беллинсгаузена, В.Й. Беринга, Ф.П. Врангеля, И.А. Гончарова, И.Ф. Крузенштерна, С.П. Крашенинникова, Д.Г. Янчевецкого, В.М. Головнина, А. Никитина, В.А. Обручева, С.О. Макарова.\n
    Серия книг представляет собой комплект интереснейших географических красочных изданий – это необыкновенные истории путешествий известных российских географов в Арктику и Антарктику, Сибирь и Китай, Тянь-Шань и другие далекие неизведанные земли. Это истории открытий новых стран и целых континентов, рассказы о том, как менялась карта мира, приобретая свои современные очертания. Книги содержат тексты дневников известных русских географов и путешественников, рисунки и фотографии участников знаменитых экспедиций, путевые заметки.\n
    Представляем некоторые из них:''',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 900,
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
                                _image = BooksCollectionData.imgGoncharovFregat;
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
                                        BooksCollectionData.imgGoncharovFregat),
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
                                    'Гончаров И. А. : Фрегат «Паллада»: путевой дневник кругосветного путешествия,  Издательство: Эксмо; Око, 2014',
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
                                    'Эта книга – явление в своем роде уникальное. Ни один из классиков русской литературы, ни до ни после Гончарова, не участвовал в подобном путешествии. Два с половиной года, тысячи километров по суше и по морю двигалась ответственная дипломатическая',
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
                  height: 400,
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          'экспедиция через Британию, Мадейру, Атлантику, Южную Африку, Индонезию, Сингапур, Японию, Китай, Филиппины. Через два месяца после возвращения Ивана Александровича появились первые очерки об экспедиции, а через два года вышло в свет первое полное издание «Фрегата “Паллада”», которое выдержало множество переизданий.\n\n',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black87)),
                      children: [
                        TextSpan(
                          text:
                              '    «…Пасмурно и ветрено; моросит дождь; ветер сильный. Мы идем по реке Вусуну; она широка, местами с нашу Оку. Ясно видим оба берега, низменные, закрытые плотинами, за плотинами группируются дома, кое-где видны кумирни или вообще здания, имеющие особенное назначение; они выше и наряднее прочих…. Ближе к Шанхаю река заметно оживлялась: беспрестанно встречались джонки. С своими, красно-бурого цвета, парусами, из каких-то древесных волокон и коры….»',
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
