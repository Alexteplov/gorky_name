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

class AfishaThird extends StatelessWidget {
  const AfishaThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '10:00':
          'Литературно-игровое занятие "Ключ от сказки Романа Сефа" (5-7 лет)',
      '14:00': 'Квиз-игра "Наука — это круто" (от 8 лет)',
      '15:00': 'Праздник Осени (4-8 лет)',
      '16:00': 'Тренинг по актерскому мастерству "Верю - не верю" (от 8 лет)',
    };
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfisha),
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
                head: '29 октября – пятница',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
              Expanded(
                flex: 6,
                child: Container(),
              ),
              const BottomLeftRight(next_steep: GlobalVar.routeAfishaW01),
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
