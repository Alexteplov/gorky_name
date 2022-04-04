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
  final Map<String, String> dtAfisha;
  const Afisha({Key? key, required this.dtAfisha}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '11:00':
          'Читаем и мастерим со сказкой Максима Горького «Воробьишко» (от 6 лет)',
      '15:00':
          'Тренинг по актерскому мастерству «Приемы импровизации. Актерские лайфхаки» (от 10 лет)',
      '16:00':
          'Встреча с писателем «Педаль от огурца» Унас в гостях Игорь Шевчук - сценарист мультфильмов про смешариков и фиксиков. (от 5 лет)',
      '16:30':
          'Литературно-игровое занятие «В гостях у дедушки Корнея», посвященное 140-летию К.И.Чуковского (от 5лет)',
    };
 */
    final Map<String, String> eventsA = {
      '10:00':
          'Библиотечное занятие «Зачем книжке картинка?» (о художниках-иллюстраторах) (от 5 лет)',
      '11:30':
          'Творческое занятие «Умелые пальчики». Делаем аппликацию «Мой котенок» (1,5-3 лет)',
      '11:00': 'Литературно-игровое занятие «В гостях у дедушки Корнея»		',
      '14:00':
          'Кинопросмотр и обсуждение фильма «ЭРА» с обзором книг о космосе. Тема «Мечта» (от 8 лет)',
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
/*               const AfishaHeaderEvent(
                head: '28 марта - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              /********************* */ */

              const AfishaHeaderEvent(
                head: '5 апреля – вторник',
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
