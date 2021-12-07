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
          'Проект «Библионяня». Развивающее занятие «Снеговик» (1,5-3 года)',
      '14:00':
          'Программа «ЭКО - что-то».  Экологический урок «Сила леса»  (7-10 лет) ',
      '15:00':
          'Киноурок. Просмотр и обсуждение фильма «Александр». Тема «Ответственность» (от 10 лет)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра  «Тумба» (от 12 лет)',
      '17:00':
          'Проект «Библионяня». Развивающее занятие «Снеговик» (1,5-3 года)',
      '17:30':
          'Клуб по развитию лидерских качеств и организаторских способностей «PROЯвись». Тема «Лидер — кто это?» (от 12 лет)',
    };

    final Map<String, String> eventsA = {
      '11:00': 'Литературное занятие «Сказки зимнего леса» (5-7 лет)',
      '12:00':
          'Киноурок. Просмотр и обсуждение фильма «Большая восьмерка».Тема «Дружба» (от 8 лет)',
      '15:00': 'Познавательный час «Парад планет» (от 8 лет)',
    };

    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03);
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
                head: '8 декабря - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              //const AfishaBottomEvent(),
/********************* */

              const AfishaHeaderEvent(
                head: '9 декабря – четверг',
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
