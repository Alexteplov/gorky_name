import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSundayA extends StatelessWidget {
/*   final Map<String, String> dayData = {
    '12:00': 'Экскурсия по библиотеке «В гости к МАКСу» (от 10 лет)',
    '14:00': 'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
    '16:30':
        'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)'
  };

  final List<int> tmpw = [];
 */
  const AfishaSundayA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '12:00':
          'Литературно-игровая программа «Новогодний калейдоскоп» клуба «РасЧитайка» (от 6 лет)',
      '14:30': 'Квест «Новогодние приключения МАКСа и Эла» (от 10 лет)',
      '15:00': 'Мастерская Деда Мороза. Мастер-класс «Снеговик» (от 6 лет)',
      '16:00':
          'Квест-игра по главным праздникам 2022 года «Двенадцать месяцев» ',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». «Новогодняя игротека» (от 8 лет)',
    };

    context.watch<RoutingData>().setRouteNextSteep('empty');
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
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
                head: '9 января – воскресенье',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),

              const AfishaBottomEvent(),
              const Expanded(
                flex: 8,
                child: SizedBox(),
              ),
              //const BottomLeftRight(/*next_steep: GlobalVar.routeAfisha01*/),
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
