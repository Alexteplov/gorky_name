import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';

import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSecond extends StatelessWidget {
  const AfishaSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final Map<String, String> events = {
      '10:00': 'Познавательный час «Карта классных мест» (От 7 лет)',
      '10:00 ':
          'Обзор-игра «Вокруг света с книгами Святослава Сахарнова» (От 7 лет)',
      '11:00':
          'Литературно-игровая программа "Дружба начинается с улыбки" (От 12 лет)',
      '12:00':
          'Познавательная игра "Путешествие в Дорожную Академию" (От 7 лет)',
      '12:00 ': 'Познавательная игра "Приключения водяной капельки" (От 7 лет)',
      '14:00':
          'Игровая программа на свежем воздухе "Вприпрыжку с книжкой" (подвижные игры  на улице) (6+)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Ответь за 5 секунд» (10+)',
      '16:00 и 16:30':
          'Кружок «Сказка на песке». Тема занятия: «Цветы на песке» (3-5 лет)',
    };

    final Map<String, String> eventsA = {
      '10:00': 'Час интересных сообщений о бабочках «Летающие цветы» (7+)',
      '12:00': 'Познавательная игра "Пернатые рекордсмены" (7+)',
      '15:00, 15:40, 16:20':
          'Тематические занятия с виртуальными очками (10+/ 3 чел.)',
      '15:00': 'Квиз "Каникулы в Хогвартсе" (10+)',
      '16:00':
          'Летний кинозал. Просмотр короткометражного фильма "Пять дней", с обзором книг. (10+)',
    }; */

    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha03);
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
                    'image/bgAfisha/schedule/2.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          /*  Column(
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
                head: '15 июня - среда',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
/********************* */

              const AfishaHeaderEvent(
                head: '16 июня – четверг',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),

              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
