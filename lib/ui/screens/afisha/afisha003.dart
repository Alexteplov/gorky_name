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

class AfishaThird extends StatelessWidget {
  const AfishaThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '15:00': 'Прямой эфир. Обзор книг от Робота МАКСа "Мои книжные друзья"',
    };
    final Map<String, String> eventsA = {
      '11:00': 'Прямой эфир. Читаем рассказ В.Драгунского "Девочка на шаре.',
      '16:00': 'Прямой эфир "ТОП- 5 книг, которые изменят твой взгляд на мир.',
    };

    final Map<String, String> eventsB = {
      '11:00':
          'Прямой эфир. Рассказываем о новых книгах для малышей "Полезные сказки Елены Ульевой"',
      '16:00': 'Прямой эфир. Квиз-игра "Литературные гонки"',
    };

    final Map<String, String> eventsC = {
      '11:00':
          'Прямой эфир. Литературное чтение "Достоевский детям", посвященное 200-летие со дня рождения писателя.',
      '15:00':
          'Прямой эфир. Познавательный кроссворд "Синичкин день" (к Синичкиному дню -12 ноября).',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfisha),
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
                head: '9 ноября – вторник',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),

              const AfishaHeaderEvent(
                head: '10 ноября - среда',
              ),
              ...eventsB.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '11 ноября – четверг',
              ),

              ...eventsC.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '12 ноября – пятница',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaQrCode(),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfishaW01),
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
