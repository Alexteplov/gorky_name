import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../component/widgets/afisha_bottom_event.dart';

class AfishaFirst extends StatelessWidget {
  const AfishaFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '14:00':
          'Кинопросмотр «Не Иван, или Как приручить Богатыря», с чтением  и обсуждением былин (7-9 лет)',
      '15:00': 'Интерактивное занятие с «Умным полом» - «Танграм» (от 8 лет)',
      '16:00': 'Час комиксов «Истории в картинках» (от 10 лет)',
      '16:30': 'Познавательное занятие «Три! Два! Один! Пуск!» (5-7 лет)',
    };

    final Map<String, String> eventsA = {
      '11:30':
          'Творческое занятие «Умелые пальчики» - поделка из пластилина  (1,5-3 лет)',
      '14:00':
          'Кинопросмотр и обсуждение фильма «Александр» с обзором художественных книг. Тема: «Ответственность» (от 8 лет)',
      '15:30':
          'Кружок «Сказка на песке». Тема занятия: «Узоры и краски весны» (3-5 лет)',
      '16:00':
          'Кружок «Сказка на песке». Тема занятия: «Узоры и краски весны» (3-5 лет)',
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
                head: '18 апреля - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              /********************* */

              const AfishaHeaderEvent(
                head: '19 апреля – вторник',
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
