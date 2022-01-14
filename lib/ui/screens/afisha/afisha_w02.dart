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

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00': 'Кружок «Фиксики». Тема занятия «Творчество» (5-7 лет)',
      '12:00':
          'Литературный клуб «РасЧитайка». Литературно-игровое занятие «На прогулку в зимний лес с писателем В. Бианки» (4-7 лет)',
      '14:15':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «ДаНетки» (от 10  лет)',
      '14:30':
          'Интерактивное образовательное занятие «Умный пол».  Игра «Логические тесты»  (6 - 10 лет)',
      '15:00': 'Мастер-класс «Северное сияние» (8-12 лет)',
      '16:00':
          'Клуб «БиблиоБЛОГИНГ». Занятие по теме: «Разработка идеи и концепции блога» (от 10 лет)',
      '16:00':
          'Кинопросмотр фильма «Как приручить дракона» по мотивам одноименной книги Крессиды Коуэлл (8-12 лет) ',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha01);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
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
                head: '16 января – воскресенье',
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
