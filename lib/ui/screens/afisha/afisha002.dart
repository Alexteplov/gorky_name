import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSecond extends StatelessWidget {
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Проект «Библионяня». Развивающее занятие «Елочка, Елочка, колючая иголочка" (1,5-3 года)',
      '14:00': 'Познавательный час «Зимнее путешествие по Уралу» (7-10 лет)',
      '15:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра  «Ответь за 5 минут» (от 9 лет)',
      '16:00':
          'Обзор художественных юмористических книг за чашкой чая «Литературное чаепитие» (от 12 лет)',
      '17:00':
          'Проект «Библионяня». Развивающее занятие «Елочка, Елочка, колючая иголочка" (1,5-3 года)',
      '17:30':
          'Клуб по развитию лидерских качеств и организаторских способностей «PROЯвись». Тема «Лидер — кто это?» (от 12 лет)',
    };

    final Map<String, String> eventsA = {
      '11:00':
          'Литературно-игровое занятие «Мы едем в Дедморозовку» - по книгам Андрея Усачева (5-7 лет)',
      '15:00':
          'Интерактивное образовательное занятие «Умный пол» - «Напряги извилины!» (от 9 лет)',
      '16:00':
          'Кинопросмотр и обсуждение фильма «БВ» и обзор художественных книг  (Тема: прощение) (от 14 лет)',
    };

    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03a);
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
                head: '15 декабря - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              //const AfishaBottomEvent(),
/********************* */

              const AfishaHeaderEvent(
                head: '16 декабря – четверг',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 7,
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
