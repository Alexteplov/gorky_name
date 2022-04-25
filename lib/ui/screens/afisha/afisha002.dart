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

class AfishaSecond extends StatelessWidget {
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '10:00': 'Краеведческая игра «Мы живем на Южном Урале» (от 10 лет)',
      '11:00':
          'Проект «Библионяня». Развивающее занятие  «Весна. Цветы» (1,5-3 лет)',
      '12:00':
          'Проект «Библионяня». Развивающее занятие  «Весна. Цветы» (1,5-3 лет)',
      '14:00':
          'Литературно-игровое занятие «Волшебное слово Валентины Осеевой» (7-9 лет)  ',
      '15:00':
          'Литературно-исторический час «Я до сих пор во сне летаю» (о 46-ой гвардейской летной эскадрильи, о женщинах-летчицах) (от 12 лет)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Военно-историческая игра «Победа» (от 12 лет)',
      '16:30':
          'Проект «Библионяня». Развивающее занятие  «Весна. Цветы» (1,5-2 лет)',
      '17:30':
          'Проект «Библионяня». Развивающее занятие  «Весна. Цветы» (2,1-3 лет)',
    };

/*     final Map<String, String> eventsA = {

    };
 */
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03);
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
                head: '27 апреля - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
/********************* */

/*               const AfishaHeaderEvent(
                head: '21 апреля – четверг',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(), */

              const Expanded(
                flex: 6,
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
