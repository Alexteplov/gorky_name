import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaThird extends StatelessWidget {
  const AfishaThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '10:30':
          'Литературное занятие «Есть город Челябинск на речке Миасс...» (5-7 лет)',
      '11:30':
          'Творческое занятие «Умелые пальчики». Тема «Осенние листочки» (2-4 года)',
      '15:00':
          'Краеведческая виртуальная экскурсия «Семь чудес Челябинска» (от 10 лет)',
    };

    final Map<String, String> eventsA = {
      '11:00 и 12:00':
          'Библионяня. Развивающее занятие «В гостях у книжек-игрушек» (1,5-3 года)',
      '13:00': 'Экскурсия по библиотеке «В гости к МАКСу» (7 -10 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Кортекс» (от 10 лет)',
      '16:30 и 17:30':
          'Библионяня. Развивающее занятие «В гостях у книжек-игрушек» (1,5-3 года)',
    }; */

    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW01);
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
                  image: AssetImage('image/bgAfisha/schedule/3.jpg'
                      //context.read<RoutingData>().getBgAfisha
                      ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          /*   Column(
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
                head: '13 сентября - вторник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const AfishaHeaderEvent(
                head: '14 сентября - среда',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const Expanded(
                flex: 6,
                child: SizedBox(),
              ),
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
