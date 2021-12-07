import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''   Выбери ближайшую к дому библиотеку. Если по какой-то причине ты не можешь посещать её, знай, что читателем Центральной городской детской библиотеки может стать каждый ребёнок и подросток, независимо от места проживания.
  
    Если ты младше 14 лет, порядок записи в библиотеку такой:
  • родители, дедушки, бабушки, опекуны приносят в библиотеку свой паспорт,
  • знакомятся с Правилами пользования библиотекой,
  • заполняют поручительство, и своей подписью заверяют обязанность соблюдать Правила.

    Если тебе 14 лет, ты можешь записаться в библиотеку по своему паспорту, но взрослый, представляющий твои интересы, так же заполняет поручительство.

    При записи в библиотеку библиотекарь обязательно познакомит тебя с Правилами пользования библиотекой. Своё обязательство о выполнении Правил ты подтвердишь личной подписью на читательском формуляре. Дети расписываются на формуляре, начиная с 3 класса.

    Если ты не живёшь в Челябинске, а приехал, например, на каникулы погостить к родственникам, ты можешь стать читателем библиотеки на тех же условиях, что и проживающие в городе дети и подростки.

    Уважаемые родители, учителя, воспитатели! Если вас волнуют проблемы детского чтения, если вы испытываете необходимость в литературе по детской психологии и педагогике или хотите быть в курсе всех новинок детской литературы, вы так же можете стать читателями детских библиотек!
''',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black87)),
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
