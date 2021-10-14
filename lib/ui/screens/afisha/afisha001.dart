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

class Afisha extends StatelessWidget {
/*   final Map<String, String> dayData = {
    '12:00': 'Экскурсия по библиотеке «В гости к МАКСу» (от 10 лет)',
    '14:00': 'Литературно-игровой час «Сказка ключницы Пелагеи» (7-10 лет)',
    '16:30':
        'Познавательное занятие о правилах гигиены «День мытья рук» (5-7 лет)'
  };

  final List<int> tmpw = [];
 */
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: SafeArea(
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
                const AfishaHeaderEvent(
                  head: '18 октября - понедельник',
                ),

                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Познавательное занятие «Почемучки среди нас» (7-10 лет)',
                ),
/*
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
*/
                const AfishaBottomEvent(),
                /************************ */
                const AfishaHeaderEvent(
                  head: '19 октября – вторник',
                ),

                //const AfishaDayEvent(),
                const AfishaEvent(
                  time: '10:00',
                  information:
                      'День новой книги. Знакомство с новой серией книг "Познавательные истории про животных и насекомых" (5-7 лет)',
                ),
                const AfishaEvent(
                  time: '10:00',
                  information:
                      'День новой книги. Знакомство с книжками про мышек (5-7 лет)',
                ),
                const AfishaEvent(
                  time: '10:30',
                  information:
                      'День новой книги. Квиз-игра по научно-познавательным книгам "Науко-это круто!"с обзором научно-познавательных книг (от 12 лет)',
                ),
                const AfishaEvent(
                  time: '17:00',
                  information:
                      'День новой книги. Знакомство с интерактивными книгами 3D и 4D "Девчонки" и "Мальчишки" (от 10 лет)',
                ),
                const AfishaBottomEvent(),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                const BottomLeftRight(next_steep: GlobalVar.routeAfisha02),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
