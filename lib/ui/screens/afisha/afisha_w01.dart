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
          'Кружок «Сказка на песке». Тема занятия: «Вслед за радугой» (от 3 до 5 лет)',
      '12:00':
          'Клуб «РасЧитайка». Литературная встреча с детской поэтессой Еленой Сыч «В гости к нам пришел поэт» (от 4 до 7 лет)',
      '14:00':
          'Путешествие по книжной выставке «Азбука национальностей» + мастер- класс в технике пластилинография «Хохлома»	(от 8 лет)',
      '15:00':
          'Интерактивное занятие «Умный пол». Игра «Логические тесты» (от 6 до 10 лет)',
      '15:30':
          'Географический кружок «На хвосте паровоза». Тема занятия «Франция» (от 7 лет)',
      '16:30':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Абра Казам» (от 10 лет)',
      '16:30 ':
          'Кружок «Сказка на песке». Тема занятия: «Вслед за радугой» (от 3 до 5 лет)',
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
                head: '2 апреля – суббота',
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
