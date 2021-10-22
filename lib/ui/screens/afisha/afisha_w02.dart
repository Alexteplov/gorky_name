import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
//import 'package:gorky_name/data/afisha_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_day_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '11:00':
          'Кружок вязания «Чудесный крючок». Знакомство с техникой вязания крючком (от 8 лет)',
      '11:00': 'Кружок "Киберзнайка". Работа в текстовом редакторе.',
      '12:00':
          'Интерактивная игра "Самый внимательный" по 4D-энциклопедии "Животный мир" (от 8 лет)',
      '12:00':
          'Литературный клуб «РасЧитайка». Литературно-игровое занятие «Веселая страна Николая Носова» (4-6 лет)',
      '14:00':
          'Интерактивное образовательное занятие «Умный пол» - «Найди пару» (6 -10 лет)',
      '14:00':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «Тик-Так Бум!»» (от 10 лет)',
      '15:00': 'Мастер-класс по скрапбукингу "Осеннее настроение" (от 8 лет)',
      '16:00':
          'Клуб «Библиоголос». Занятие по ораторскому мастерству по теме: «Интонация и дикция» (от 10 лет)',
    };
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
                head: '31 октября – воскресенье',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              const BottomLeftRight(/*next_steep: GlobalVar.routeAfisha01*/),
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
