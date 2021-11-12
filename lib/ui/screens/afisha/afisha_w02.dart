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

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00': 'Прямой эфир. Кукольный спектакль "Жили- были ёжики"',
    };
    final Map<String, String> eventsA = {
      '11:00':
          'Прямой эфир. Мастер-класс "Осеннее дерево", рисуем солью и клеем.',
      '15:00':
          'Видеоурок "Академия безопасности 2.0: Безопасность детей на воде".',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03a);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfishaWeekends),
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
                head: '13 ноября – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaHeaderEvent(
                head: '14 ноября – воскресенье',
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
