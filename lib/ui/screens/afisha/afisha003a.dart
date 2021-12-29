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

class AfishaThirdA extends StatelessWidget {
  const AfishaThirdA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '10:00':
          'Акция «В Новый год — с библиотекой!» для первых десяти читателей 2022 года',
      '11:00': 'Волшебный фонарь. Просмотр диафильма (от 3 лет)',
      '12:00': 'Мастер-класс «Снежинка» (от 7 лет)',
      '15:00': 'Новогодний баттл «Зажги ёлку» (от 10 лет)',
      '16:00':
          'Литературно-игровое занятие «Мы едем в Дедморозовку» - по книгам Андрея Усачева (от 5 лет)',
      '16:00':
          'Презентация книжной экспозиции «Ёлка» с мастер-классом «Новогодние елочки» (от 10 лет)',
    };

    final Map<String, String> eventsA = {
      '12:00': 'Мастер-класс «Новогодняя фантазия» (от 6 лет)',
      '14:30':
          'Литературно-игровая программа "Новогодний салат из сказок" (от 6 лет)',
      '15:00':
          'Клуб любителей настольных игр «Сто наСтолок». «Новогодняя игротека» (от 8 лет)',
      '15:00':
          'Новогодний кинопросмотр фильма «Гринч» по мотивам книги Доктора Сьюза «Как Гринч украл Рождество» (от 6 лет)',
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
                head: '5 января - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const AfishaHeaderEvent(
                head: '6 января - четверг',
              ),
              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 8,
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
