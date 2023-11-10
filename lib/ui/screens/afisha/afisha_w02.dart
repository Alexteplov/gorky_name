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

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '11:00':
          'Интерактивное занятие «Умный пол». Игра «Найди лишнее» (6-8 лет)',
      '14:00': 'Архитектурный мастер-класс «Что такое СФЕРА?» (5-8 лет)',
      '15:00':
          'Мастер-класс «Золотая рыбка» от Кондитерский студии «Высший вкус» (от 5 лет)',
      '16:00':
          'Кружок «Сказка на песке». Тема занятия: «Песочный садовод» (3-5 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Имаджинариум» (от 10 лет)',
    }; */
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03a);
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
                  image: AssetImage(
                      //context.read<RoutingData>().getBgAfisha
                      'image/bgAfisha/schedule/5.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          /* Column(
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
                head: '17 сентября – суббота',
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
          ), */
        ],
      ),
    );
  }
}
