import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
/* import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart'; */
//import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
//import 'package:google_fonts/google_fonts.dart';
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
/*     final Map<String, String> events = {
      '10:30':
          'Кружок «Фиксики». Тема занятия «Фиксики в мире животных» (5-7 лет)',
      '12:00':
          'Клуб «РасЧитайка».  Литературное занятие «Читаем солдатскую сказку К. Паустовского «Похождения жука-носорога» (4-7 лет)',
      '12:00 ': 'Фотоклуб «Искусство мобильной съемки» (от 14 лет)',
      '14:00':
          'Клуб «Zero Waste». Кинопросмотр и обсуждение мультфильма «Лоракс» по мотивам одноименной детской книги Доктора Сьюза (от 6 лет)',
      '14:15':
          'Клуб по развитию лидерских качеств и организаторских способностей «ProЯвись» (от 12 лет)',
      '15:30':
          'Интерактивное занятие «Вечный огонь» с мастер-классом в рамках акции «Поклонимся великим тем годам» (от 8 лет)',
      '16:00':
          'Клуб «БиблиоГОЛОС» - «Актерские техники и работа на камеру» (от 10 лет)',
    }; */

    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
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
                      'image/bgAfisha/schedule/8.jpg'),
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
                head: '8 мая – воскресенье',
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
 */
        ],
      ),
    );
  }
}
