import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSaturday extends StatelessWidget {
  const AfishaSaturday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '10:00 и 11:00':
          'Познавательное занятие «От Челябы до Челябинска» (5-7 лет)',
      '16:00':
          'Квест «Секретное слово МАКСа, или Посвящение пятиклассников» (для организованных групп 5 классов)',
      '16:30':
          'Кружок «Сказка на песке» Тема занятия: «Песочный садовод» (3- 5 лет)',
      '17:00': 'Мастер-класс по рисованию «Цветы» (5-7 лет)',
    };
    final Map<String, String> eventsA = {
      '15:00':
          'Познавательный час «Невозможное сегодня станет возможным завтра», к 165-летие со дня рождения К. Э. Циолковского (от 10 лет)',
      '16:00': 'Интерактивное занятие «Умный пол». Игра «2048» (6-9 лет)',
      '16:00 ':
          'Кинопросмотр и обсуждение фильма «Радость познания» с обзором художественных книг Тема: Ответственность (от 10-14 лет)',
    }; */

    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 1.0,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      //context.read<RoutingData>().getBgAfisha
                      'image/bgAfisha/schedule/4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          /* Column(
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
                head: '15 сентября – четверг',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const AfishaHeaderEvent(
                head: '16 сентября – пятница',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const Expanded(
                flex: 6,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfishaW02),
              const SizedBox(
                height: 30,
              ),
            ],
          ), */
        ],
      ),
    );
  }
}
