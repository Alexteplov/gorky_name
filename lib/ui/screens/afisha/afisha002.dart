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
      '10:00': 'Литературно-игровая программа «Шилову-УРА!» (от 7 лет)',
      '11:00':
          'Проект «Библионяня». Развивающее занятие «Предметы вокруг нас. В небе и на воде»	(1,5-3 лет)',
      '15:00': 'Квиз-игра «Литературныеи гонки» (от 12 лет)',
      '16:00':
          'Час магии и фокусов «В мире волшебства» (по книге «Иллюзионология. Секреты магии») (от 10 лет)',
      '16:30':
          'Проект «Библионяня». Развивающее занятие «Предметы вокруг нас. В небе и на воде» (1,5-2 лет)',
      '17:30':
          'Проект «Библионяня». Развивающее занятие «Предметы вокруг нас. В небе и на воде» (от 2 до 3 лет)',
    };

/*     final Map<String, String> eventsA = {
      '15:00':
          'Географический кружок «На хвосте паровоза». Тема занятия «Австралия» (от 7 лет)',
      '16:00':
          'Интерактивное занятие «Умный пол». Приглашаем на игру «Найди отличия» (от 8 лет)',
    }; */

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
                head: '30 марта - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
/********************* */

/*               const AfishaHeaderEvent(
                head: '1 апреля – четверг',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(), */

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
