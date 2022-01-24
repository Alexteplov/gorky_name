import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSecond extends StatelessWidget {
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Проект «Библионяня». Развивающее занятие «Форма и цвет. Треугольник» (1,5-3 лет)',
      '12:15':
          'Литературно-исторический час по книге Эллы Фоняковой «Хлеб той зимы», посвященный Блокаде Ленинграда (от 10 лет)',
      '14:00':
          'Программа «ЭКО что-то». Экологический урок «Лес и климат» (7-9 лет)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра по ОБЖ «Предупрежден — значит вооружен!» (от 10 лет)',
      '17:00':
          'Проект «Библионяня». Развивающее занятие «Форма и цвет. Треугольник» (1,5-2 лет)',
      '18:00':
          'Проект «Библионяня». Развивающее занятие «Форма и цвет. Треугольник» (2,1-3 лет)',
    };

/*     final Map<String, String> eventsA = {
      '10:00':
          'Литературно-игровое занятие «На прогулку в зимний лес с писателем В. Бианки» (от 5 лет)',
      '15:00':
          'Кинопросмотр и обсуждение фильма «Большая восьмерка» с обзором художественных книг. Тема: «добро», «милосердие», «сострадание» (от 10 лет)',
      '16:00':
          'Урок мужества, посвященный блокаде Ленинграда «900 дней мужества», по книге Н. Ходза «Дорога жизни» (от 10 лет)',
    }; */

    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03);
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
                head: '26 января - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
/********************* */

              /*             const AfishaHeaderEvent(
                head: '20 января – четверг',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(), */

              const Expanded(
                flex: 7,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
