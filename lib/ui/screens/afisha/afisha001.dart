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
    /*   final Map<String, String> events = {
      '11:00':
          'Викторина по сказкам А.С. Пушкина «У Лукоморья дуб зеленый…», ко Дню рождения А.С. Пушкина (от 6 до 9 лет)',
      '11:30': 'Литературная игра-бродилка по творчеству А.С. Пушкина (8+)',
      '13:00':
          'Интерактивное занятие "Умный пол" - "Пять островов" (от 7 до 10 лет)',
      '15:00':
          'Час магии и фокусов «В мире волшебства» (по книге "Иллюзионология. Секреты магии") (10+)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Штука» (10+)',
    }; */

/*     final Map<String, String> eventsA = {
      '10:00': 'Игра-путешествие «В мире сказов Павла Бажова» (От 7 лет)',
      '11:00': 'Игровая программа «Дед Мороз и Лето» (От 5 лет)',
      '15:00': 'Интерактивное занятие «Умный пол» - «Пять островов» (От 7 лет)',
      '16:30':
          'Творческое занятие «Умелые пальчики». Поделка «Пластилиновое лето» (От 1.5 до 3 лет)',
    }; */
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha02);
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
                  image: AssetImage('image/bgAfisha/schedule/1.jpg'
                      //context.read<RoutingData>().getBgAfisha
                      ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
/*           Column(
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
                head: '6 июня - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
 /******************* */

              const AfishaHeaderEvent(
                head: '14 июня – вторник',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
