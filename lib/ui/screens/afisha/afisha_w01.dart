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
          'Кружок «Сказка на песке». Тема занятия: «Космический песок» (3-5 лет)',
      '11:30':
          'Громкие чтения «Не просто сказка» (Р.Киплинг) + «Умный пол» (5-6 лет)',
      '12:30':
          'Кружок «Волшебный фонарь». Просмотр диафильма «Встреча с вреднюгами» (4-7 лет)',
      '14:00':
          'Клуб по развитию лидерских качеств и организаторских способностей «ProЯвись». Тема «Мотивация или зачем мне это?» (от 12 лет)',
      '14:00 ':
          'Интерактивное занятие «Умный пол» - «Путешествие» (от 8-12 лет)',
      '15:00':
          'Мульстудия «Настроение». Тема: «Творческий блок. Озвучивание мультфильма» (от 10 -14 лет)',
      '16:00':
          'Географический кружок «На хвосте паровоза». Тема занятия «Япония» (от 7- 12 лет)',
      '16:30':
          'Кружок «Сказка на песке». Тема занятия: «Космический песок» (3-5 лет)',
      '17:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Клякса» (4-6 лет)',
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
                head: '9 апреля – суббота',
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
