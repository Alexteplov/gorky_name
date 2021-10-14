import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
//import 'package:gorky_name/data/afisha_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_day_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AfishaSunday extends StatelessWidget {
/*   final Map<String, String> dayData = {
    '12:00': 'Экскурсия по библиотеке «В гости к МАКСу» (от 10 лет)',
    '14:00': 'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
    '16:30':
        'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)'
  };

  final List<int> tmpw = [];
 */
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Container(
                height: Screen.height(context),
                width: Screen.width(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(GlobalVar.bgImgAfishaWeekends),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'Афиша',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                ),
                /************************ */
                const AfishaHeaderEvent(
                  head: '17 октября – воскресенье',
                ),

                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '11:00',
                  information:
                      'Кружок вязания «Чудесный крючок». Знакомство с техникой вязания крючком (от 8 лет)',
                ),
                const AfishaEvent(
                  time: '12:00',
                  information:
                      'Литературный клуб «РасЧитайка». Литературно-игровое занятие «Игры в прятки со сказками Дональда Биссета» (4-6 лет)',
                ),
                const AfishaEvent(
                  time: '12:00',
                  information:
                      'Интерактивное занятие по 4D-энциклопедии «Живой мир» (от 10 лет)',
                ),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Интерактивное образовательное занятие «Умный пол» - «Найди пару» (6 -10 лет)',
                ),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Клуб любителей настольных игр «Сто наСтолок».  Игра по ОБЖ «Предупрежден — значит вооружен!» (от 10 лет)',
                ),
                const AfishaEvent(
                  time: '15:00',
                  information:
                      'Творческая мастерская «#Сделал сам». Мастер-класс по изготовлению объемной открытки «Букет цветов» (5-8 лет)',
                ),
                const AfishaEvent(
                  time: '16:00',
                  information:
                      'Клуб «Библиоголос». Занятие по ораторскому мастерству по теме: «Дикция и артикуляция» (от 10 лет)',
                ),

                const AfishaBottomEvent(),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                const BottomLeftRight(next_steep: GlobalVar.routeAfisha01),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
