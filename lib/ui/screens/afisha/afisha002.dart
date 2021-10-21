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

class AfishaSecond extends StatelessWidget {
/*   final Map<String, String> dayData = {
    '12:00': 'Экскурсия по библиотеке «В гости к МАКСу» (от 10 лет)',
    '14:00': 'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
    '16:30':
        'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)'
  };

  final List<int> tmpw = [];
 */
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfisha),
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
                head: '20 октября - среда',
              ),

              //const AfishaDayEvent(),
              const AfishaEvent(
                time: '11:00',
                information:
                    'Проект «Библионяня». Развивающее занятие «Дикие животные. Ежик» (1,5-3 года)',
              ),
              const AfishaEvent(
                time: '14:00',
                information:
                    'Познавательное занятие «Почемучки среди нас» (7-10 лет)',
              ),
              const AfishaEvent(
                time: '16:00',
                information:
                    'Клуб любителей настольных игр «Сто наСтолок». Игра  «Имаджинариум» (от 12 лет)',
              ),
              const AfishaEvent(
                time: '17:00',
                information:
                    'Проект «Библионяня». Развивающее занятие «Дикие животные. Ежик» (1,5-3 года)',
              ),
              const AfishaEvent(
                time: '17:30',
                information:
                    'Клуб по развитию лидерских качеств и организаторских способностей «PROЯвись». Тема «Лидер — кто это?»  (от 12 лет)',
              ),
              const AfishaBottomEvent(),
/********************* */
              const AfishaHeaderEvent(
                head: '21 октября – четверг',
              ),

              //const AfishaDayEvent(),
              const AfishaEvent(
                time: '10:00',
                information:
                    'Экскурсия по библиотеке «В гости к МАКСу» (5-7 лет)',
              ),
              const AfishaEvent(
                time: '11:00',
                information:
                    'Знакомство с новой серией книг "Познавательные истории про животных и насекомых" (5-7 лет)',
              ),
              const AfishaEvent(
                time: '15:00',
                information:
                    'Клуб любителей настольных игр «Сто наСтолок». Игра «Паутинка» (6-9 лет)',
              ),
              const AfishaEvent(
                time: '15:00',
                information: 'Квиз «Литературная интуиция» (от 15 лет)',
              ),
              const AfishaEvent(
                time: '17:00',
                information:
                    'Интерактивное образовательное занятие «Умный пол» - «Напряги извилины!»» (от 9 лет)',
              ),
              const AfishaBottomEvent(),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              const BottomLeftRight(next_steep: GlobalVar.routeAfisha03a),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
