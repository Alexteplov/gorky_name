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
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*
    final Map<String, String> events = {
      '14:00':
          'Единый день чтения вслух. Читаем книгу стихов Л. Преображенской «Зимним вечерком» (от 7 лет)',
      '15:00':
          'Единый день чтения вслух. Прямой эфир в группе ВК и Инстаграм «Читаем и обсуждаем книги Тамары Михеевой»',
      '16:30':
          'Литературно-игровое занятие «На прогулку в зимний лес с писателем В. Бианки» (от 5 лет)',
    }; */

    final Map<String, String> eventsA = {
      '10:00':
          'Познавательное занятие «Богатыри Земли Русской», посвященное 23 февраля (5-7 лет)',
      '15:30': 'Смарт-баттл «Мальчишки против девчонок» (от 10 лет)',
    };
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03a);
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
                head: '17 января - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(), */
              /********************* */

              const AfishaHeaderEvent(
                head: '22 февраля – вторник',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 8,
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
