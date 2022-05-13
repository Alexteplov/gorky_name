import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '10:00':
          'Кружок вязания «Чудесный крючок». Знакомство с техникой вязания крючком (от 8 лет)',
      '10:30':
          'Кружок «Фиксики». Тема занятия «Фиксики в мире животных» (5-7 лет)',
      '11:30':
          'Кружок «Волшебный фонарь». Просмотр диафильма «Красная шапочка» (от 4 до 6 лет)',
      '12:00':
          'Фотоклуб «Искусство мобильной съемки» Тема: «Видеосъёмка — монтаж» (от 14 лет)',
      '15:00':
          'Клуб по развитию лидерских качеств и организаторских способностей «ProЯвись». Тема «Волонтерство. Что это и с чем его «едят»?» (от 12 лет)',
      '15:00 ':
          'Мастер-класс по тамбурной вышивке от рукодельницы - Софьи Чечушковой. (от 7 лет)',
      '16:00':
          'Клуб «БиблиоБЛОГИНГ». Занятие по теме: Отработка методики «Мозговой штурм» (от 10 лет)',
      '16:00 ':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Клякса» (5-7 лет)',
      '16:30':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Клякса» (5-7 лет)',
    };
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha01);
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
                head: '15 мая – воскресенье',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),

              const AfishaBottomEvent(),
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
