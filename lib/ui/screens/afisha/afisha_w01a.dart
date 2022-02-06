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

class AfishaSaturdayA extends StatelessWidget {
  const AfishaSaturdayA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Кружок «Волшебный фонарь». Просмотр диафильма «Цветик-семицветик» (4-7 лет)',
      '12:00':
          'Кружок «Фиксики». Тема занятия «Транспортная техника» (5-7 лет)',
      '12:00 ':
          'Литературно-исторический час «На Мамаевом кургане тишина», ко Дню Сталинградской битвы (от 14 лет)',
      '14:30':
          'Мастер-класс «Улица моей мечты» от Детской архитектурной студии «Я могу» (от 6 лет)',
      '15:30':
          'Интерактивное образовательное занятие «Умный пол» - «Логические тесты» (6-10 лет)',
      '16:00':
          'Программа «ЭКО что-то». Экологический урок «Лес и климат» с мастер-классом в технике пластилинография (от 10 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Тик - так... Бум» (от 10 лет)',
    };

    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02a);
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
                head: '5 февраля – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfishaW02),
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
