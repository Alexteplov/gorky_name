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
      '12:00':
          'Квест-игра по главным праздникам 2022 года «Двенадцать месяцев» (от 10 лет)',
      '14:30':
          'Литературно-игровая программа «Новогодний калейдоскоп» (от 5 лет)',
      '15:00': 'Квест «Новогодние приключения МАКСа и Эла» (от 10 лет)',
      '17:00':
          'Новогодние семейные посиделки "Интеллектуальные игры для всей семьи"',
    };

    final Map<String, String> eventsA = {
      '10:30':
          'Новогодний утренник «Приключение Деда Мороза в стране чудес» (1,5 - 3 лет)',
      '15:00': 'Квест «Новогодние приключения МАКСа и Эла» (от 10 лет)',
      '17:00':
          'Новогодние семейные посиделки. Литературно-игровая программа "Новогодний салат из сказок',
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
                head: '29 декабря - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              //const AfishaBottomEvent(),
/********************* */

              const AfishaHeaderEvent(
                head: '30 декабря – четверг',
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
