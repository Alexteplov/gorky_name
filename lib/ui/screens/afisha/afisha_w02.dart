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
      '11:00':
          'Кружок «Фиксики». Тема занятия «Эволюция жизни на Земле или почему исчезли динозавры» (от 5-7 лет)',
      '12:00':
          'Клуб «РасЧитайка». Литературное занятие «Три! Два Один! Пуск!» (4-7 лет)',
      '12:00 ':
          'Час магии и фокусов «В мире волшебства» (по книге «Иллюзионология. Секреты магии») (от 10 лет)',
      '14:15':
          'Клуб по развитию лидерских качеств и организаторских способностей «ProЯвись». Тема: «Команда мечты» (от 12 лет)',
      '14:30':
          'Мастер-класс от художника ЦДБ в технике гуашевое рисование «Матрешка» (от 8 лет)',
      '16:00':
          'Тренинг по актерскому мастерству «Приемы импровизации. Актерские лайфхаки» (от 10 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Кто хулиганиит в кастрюлькино» (от 8 лет)',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
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
                head: '17 апреля – воскресенье',
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
