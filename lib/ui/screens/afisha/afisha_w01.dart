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

class AfishaSaturday extends StatelessWidget {
  const AfishaSaturday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Кружок вязания «Чудесный крючок». Тема занятия: знакомство с техникой вязания крючком (от 8 лет)',
      '11:00': 'Просмотр диафильма «По щучьему велению» (4-7 лет)',
      '12:00':
          'Занятие творческого кружка «Сказка на песке». Тема занятия: «Песочные эмоции» (3-5 лет)',
      '15:00':
          'Библиотечная лаборатория с опытами и экспериментами «Научно - нескучно». Тема: «Вещества» (от 8 лет)',
      '16:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Прятки» (4-6 лет)',
      '16:00':
          'Астрономический кружок «Отроки во Вселенной». Познавательно –практическое занятие «Быстрый и всегда первый» (от 10 лет)',
      '16:30':
          'Занятие творческого кружка «Сказка на песке». Тема занятия: «Песочные эмоции» (3-5 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Зомби в доме» (от 10 лет)',
    };
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfishaW02);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
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
                head: '15 января – суббота',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              const Expanded(
                flex: 8,
                child: SizedBox(),
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
