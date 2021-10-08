import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/afisha_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_day_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Afisha extends StatelessWidget {
/*   final Map<String, String> dayData = {
    '12:00': 'Экскурсия по библиотеке «В гости к МАКСу» (от 10 лет)',
    '14:00': 'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
    '16:30':
        'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)'
  };

  final List<int> tmpw = [];
 */
  Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Screen.height(context),
              width: Screen.width(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GlobalVar.bgImgAfisha),
                  fit: BoxFit.fill,
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
                          textStyle: Theme.of(context).textTheme.headline2!),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: AfishaHeaderEvent(
                    head: '11 октября - понедельник',
                  ),
                ),
                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
                ),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
                ),
                const AfishaEvent(
                  time: '16:30',
                  information:
                      'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)',
                ),
                const AfishaBottomEvent(),
                /************************ */
                const Expanded(
                  flex: 1,
                  child: AfishaHeaderEvent(
                    head: '12 октября – вторник',
                  ),
                ),
                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '11:00',
                  information: 'Брейн-ринг «Легенды Танкограда» (от 12 лет)',
                ),
                const AfishaEvent(
                  time: '11:00',
                  information:
                      'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)',
                ),
                const AfishaEvent(
                  time: '16:00',
                  information:
                      'Краеведческая встреча клуба «Тайны уездного города Че» (от 10 лет)',
                ),
                const AfishaEvent(
                  time: '17:00',
                  information:
                      'Интерактивное занятие по 4D-энциклопедии «Живой мир» (от 10 лет)',
                ),
                const AfishaBottomEvent(),
                /************************ */
                const Expanded(
                  flex: 1,
                  child: AfishaHeaderEvent(
                    head: '13 октября - среда',
                  ),
                ),
                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '11:00',
                  information:
                      'Проект «Библионяня». Развивающее занятие «Дикие животные. Заяц» (1,5-3 года)',
                ),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Программа «ЭКО — что-то». Экологический урок «Вода в нашей жизни» (7-10 лет)',
                ),
                const AfishaEvent(
                  time: '16:00',
                  information:
                      'Клуб любителей настольных игр «Сто наСтолок». Игра по ОБЖ «Предупрежден — значит вооружен!» (от 10 лет)',
                ),
                const AfishaEvent(
                  time: '17:00',
                  information:
                      'Проект «Библионяня». Развивающее занятие «Дикие животные. Заяц» (1,5-3 года)',
                ),
                const AfishaEvent(
                  time: '17:30',
                  information:
                      'Клуб по развитию лидерских качеств и организаторских способностей «PROЯвись». Тема «Лидер — кто это?» (от 12 лет)',
                ),
                const AfishaBottomEvent(),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                const BottomLeftRight(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}