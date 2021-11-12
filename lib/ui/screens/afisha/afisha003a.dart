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

class AfishaThirdA extends StatelessWidget {
  const AfishaThirdA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '15:00':
          'Проект "Учимся летать вместе с крышами" от детской писательницы Зули Стадник',
    };
    final Map<String, String> eventsA = {
      '16:00': 'Прямой эфир. Обзор - игра "По следам литературных сыщиков"',
    };

    final Map<String, String> eventsB = {
      '11:00': 'Прямой эфир. Обзор новинок о дружбе "Ты мой лучший друг!"',
      '16:00': 'Прямой эфир. "5 интересных книг для младших школьников"',
    };

    final Map<String, String> eventsC = {
      '11:00':
          'Прямой эфир. "ТОП самых интересных изобретений М.В. Ломоносова"',
      '16:00':
          'Прямой эфир. Викторина от робота МАКСа "С Днем рождения, Дед Мороз!"',
    };
    final Map<String, String> eventsD = {
      '15:00': 'Прямой эфир "Сказка-тренинг по правам ребенка"',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02a);
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
                head: '15 ноября – понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '16 ноября – вторник',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),

              const AfishaHeaderEvent(
                head: '17 ноября - среда',
              ),
              ...eventsB.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '18 ноября – четверг',
              ),

              ...eventsC.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '19 ноября – пятница',
              ),
              ...eventsD.entries
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
