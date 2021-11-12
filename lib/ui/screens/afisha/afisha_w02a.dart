import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
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
      '11:00': 'Прямой эфир. Кукольный спектакль "Кот, Петух и Лиса"',
    };
    final Map<String, String> eventsA = {
      '11:00':
          'Прямой эфир. Мастер-класс в технике скрапбукинг "Открытка для мамы"',
      '15:00':
          'Видеоурок №2 "Академия безопасности 2.0: Оказание первой помощи детьми"',
    };
    context.watch<RoutingData>().setRouteNextSteep('empty');
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfishaWeekendsW),
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
                head: '20 ноября – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '21 ноября – воскресенье',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaQrCode(),
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
