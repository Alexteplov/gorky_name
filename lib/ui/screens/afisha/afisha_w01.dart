import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
//import 'package:gorky_name/data/afisha_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_day_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

class AfishaSaturday extends StatelessWidget {
  const AfishaSaturday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00': 'Кукольный спектакль «Три поросенка» (3 - 7 лет)',
      '12:00':
          '«Песочные каракули» - занятие творческого кружка «Сказка на песке» (3 - 5 лет)',
      '14:00': 'Игра-тренинг "Мир профессий" (от 13 лет)',
      '15:00': 'Мультстудия «Настроение». Творческий блок: Съемка (от 8 лет)',
      '16:00':
          'Творческая мастерская "#Cделал сам!" Мастер-класс в технике модульного оригами "Цветок желаний" (от 8 лет)',
      '16:30':
          '«Песочные каракули» - занятие творческого кружка «Сказка на песке» (3 - 5 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Тик-Так Бум!» (от 10 лет)',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02);
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
                head: '30 октября – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              Expanded(
                flex: 2,
                child: Container(),
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
