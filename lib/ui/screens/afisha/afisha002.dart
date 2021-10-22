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
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Проект «Библионяня». Развивающее занятие «Дикие животные. Лиса» (1,5-3 года)',
      '12:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра "Гембло" (6-9 лет)',
      '14:00': 'Час интересных сообщений "Безопасность в городе" (7-10 лет)',
      '15:00': 'Игра-соревнование "Охотники за разумом" (от 8 лет)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Башня с фантами» (от 8 лет)',
      '17:00':
          'Проект «Библионяня». Развивающее занятие «Дикие животные. Лиса» (1,5-3 года)',
    };
    /*
    final Map<String, String> eventsA = {
      '10:00':
          'Литературно-игровое занятие "Ключ от сказки Романа Сефа" (5-7 лет)',
      '14:00': 'Квиз-игра "Наука — это круто" (от 8 лет)',
      '15:00': 'Праздник Осени (4-8 лет)',
      '16:00': 'Тренинг по актерскому мастерству "Верю - не верю" (от 8 лет)',
    };
    */
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
                head: '27 октября - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
/********************* */
/*
              const AfishaHeaderEvent(
                head: '21 октября – четверг',
              ),

               ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
*/
              Expanded(
                flex: 1,
                child: Container(),
              ),
              const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
