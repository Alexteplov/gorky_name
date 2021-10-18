import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Afisha extends StatelessWidget {
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '14:00': "Познавательное занятие «Почемучки среди нас» (7-10 лет)"
    };
    final Map<String, String> eventsA = {
      '10:00':
          'День новой книги. Знакомство с новой серией книг "Познавательные истории про животных и насекомых" (5-7 лет)',
      '10:00':
          'День новой книги. Литературно-игровое занятие "Мышки в книжках" (5-7 лет)',
      '10:30':
          'День новой книги. Квиз-игра по научно-познавательным книгам "Наука-это круто!" с обзором научно-познавательных книг (от 12 лет)',
      '17:00':
          'День новой книги. Знакомство с интерактивными книгами 3D и 4D "Девчонки" и "Мальчишки" (от 10 лет)'
    };
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
                ...events.entries
                    .map((e) => AfishaEvent(time: e.key, information: e.value)),
                const AfishaBottomEvent(),
                /************************ */
                const AfishaHeaderEvent(
                  head: '19 октября – вторник',
                ),

                //const AfishaDayEvent(),
                ...eventsA.entries
                    .map((e) => AfishaEvent(time: e.key, information: e.value)),
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
