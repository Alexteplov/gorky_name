import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
/* import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:google_fonts/google_fonts.dart'; */
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSaturdayA extends StatelessWidget {
  const AfishaSaturdayA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '10:30':
          'Кружок «Волшебный фонарь». Просмотр диафильма «Командую флотом» (6-9 лет)',
      '11:00':
          'Кружок «Сказка на песке». Тема занятия: «Моя вообразилия» (3-5 лет)',
      '11:30':
          'Клуб «Книжная семья». Громкие чтения с мастер-классом «Голубь мира» (6-7 лет)',
      '12:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Гембло» (от 6 лет)',
      '14:00':
          'Литературно-музыкальная композиция «Долгое эхо войны» (от 10 лет)',
      '15:00':
          'Интерактивное занятие «Вечный огонь» с мастер-классом в рамках акции «Поклонимся великим тем годам» (от 8 лет)',
      '16:00':
          'Кружок «Сказка на песке». Тема занятия: «Моя вообразилия» (3-5 лет)',
      '16:00 ':
          'Клуб любителей настольных игр «Сто наСтолок». Военно-историческая игра «Победа» (от 12 лет)',
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
                      'image/bgAfisha/schedule/7.png'),
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
                head: '7 мая – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfishaW02),
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
