import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../component/widgets/afisha_bottom_event.dart';

class Afisha extends StatelessWidget {
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Мастерская Деда Мороза. Мастер-класс «Необычные снежинки» (от 7 лет)',
      '12:00': 'Квест «Новогодние приключения МАКСа и Эла» (от 10 лет)',
      '15:00':
          'Клуб любителей настольных игр «Сто наСтолок». «Новогодняя игротека» (от 6 лет)',
      '16:00':
          'Литературно-игровое занятие «Мы едем в Дедморозовку» - по книгам Андрея Усачева (от 5 лет)',
      '17:00': 'Новогодние семейные посиделки "Новый год в стиле-ретро"',
    };

    final Map<String, String> eventsA = {
      '14:30':
          'Литературно-игровая программа «Новогодний калейдоскоп» (от 5 лет)',
      '15:00': 'Квест «Новогодние приключения МАКСа и Эла» (от 10 лет)',
      '16:00':
          '«Новый год на песке» - занятие творческого кружка «Сказка на песке» (3 - 5 лет)',
      '17:00': 'Литературная квиз-игра «Где логика?» (от 14 лет)',
      '17:00': 'Новогодние семейные посиделки. Обзор книжной выставки "Ёлка"',
    };
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha02);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(context.read<RoutingData>().getBgAfisha),
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
                head: '27 декабря - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              //const AfishaBottomEvent(),
              /********************* */

              const AfishaHeaderEvent(
                head: '28 декабря – вторник',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 8,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
