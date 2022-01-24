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
      '10:00':
          'Кружок вязания «Чудесный крючок». Знакомство с техникой вязания крючком (от 8 лет)',
      '11:00':
          'Кружок «Фиксики». Тема занятия «Транспортная техника» (5-7 лет)',
      '12:00':
          'Фотоклуб «Искусство мобильной съемки» Тема: Что такое фотография? (от 14 лет)',
      '12:00 ':
          'Клуб «РасЧитайка». Литературно-игровое занятие «Волшебные сказки Братьев Гримм» (4-7 лет)',
      '14:15':
          'Клуб по развитию лидерских качеств и организаторских способностей «PROЯвись». Тема «Лидер — кто это?» (от 12 лет)',
      '14:30':
          'Интерактивное образовательное занятие «Умный пол» - «Цирк» (от 8 лет)',
      '15:00': 'Квиз «Игры разума» (от 14 лет)',
      '16:00': 'Мастер-класс «Живой подарок»  (от 6 лет)',
      '16:00 ':
          'Клуб «БиблиоГОЛОС». Занятие по теме: «Тембр и высота голоса» (от 10 лет)',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
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
                head: '30 января – воскресенье',
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
