import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

class RulesForReaders extends StatelessWidget {
  const RulesForReaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Каждый челябинец в возрасте до 15 лет может стать читателем детской библиотеки.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 8, right: 8, bottom: 8),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   Выбери ближайшую к дому библиотеку. Если по какой-то причине ты не можешь посещать её, знай, что читателем Центральной городской детской библиотеки может стать каждый ребёнок и подросток, независимо от места проживания.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: '    Если ты младше 14 лет,',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text: ' порядок записи в библиотеку такой:',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '    • ',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text:
                                  ' родители, дедушки, бабушки, опекуны приносят в библиотеку свой паспорт,',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '    • ',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text:
                                  ' знакомятся с Правилами пользования библиотекой,',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<RoutingData>()
                              .setRoute(GlobalVar.routeRulesForReadersHtml);
                        },
                        child: RichText(
                          text: TextSpan(
                            text: '    • ',
                            style: GoogleFonts.oswald(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold)),
                            children: [
                              TextSpan(
                                text:
                                    ' заполняют поручительство, и своей подписью заверяют обязанность соблюдать ',
                                style: GoogleFonts.oswald(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: Colors.black87,
                                        )),
                              ),
                              TextSpan(
                                text: 'Правила.',
                                style: GoogleFonts.oswald(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: '    Если тебе 14 лет,',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text:
                                  ' ты можешь записаться в библиотеку по своему паспорту, но взрослый, представляющий твои интересы, так же заполняет поручительство.',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '    При записи в библиотеку библиотекарь обязательно познакомит тебя с Правилами пользования библиотекой. Своё обязательство о выполнении Правил ты подтвердишь личной подписью на читательском формуляре. Дети расписываются на формуляре, начиная с 3 класса.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.black87)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              '    Если ты не живёшь в Челябинске, а приехал, например, на каникулы погостить к родственникам,',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text:
                                  ' ты можешь стать читателем библиотеки на тех же условиях, что и проживающие в городе дети и подростки.',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: '    Уважаемые родители, учителя, воспитатели!',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                          children: [
                            TextSpan(
                              text:
                                  ' Если вас волнуют проблемы детского чтения, если вы испытываете необходимость в литературе по детской психологии и педагогике или хотите быть в курсе всех новинок детской литературы, вы так же можете стать читателями детских библиотек!',
                              style: GoogleFonts.oswald(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        color: Colors.black87,
                                      )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                          child: Text(
                        'Рады видеть Вас в детских библиотеках г. Челябинска.',
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                      )),
                      const SizedBox(height: 20),
                      Center(
                          child: Text(
                        'ЧИТАЙТЕ С НАМИ!',
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                      )),
                    ],
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
