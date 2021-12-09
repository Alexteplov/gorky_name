import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class Afisha extends StatelessWidget {
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/* 
    final Map<String, String> events = {
      '14:00': 'Час интересных сообщений "Безопасность в городе" (7-10 лет)',
      '15:00': 'Квиз "Литературная интуиция" (от 14 лет)',
      '16:00':
          'Час кино. Просмотр фильма "Там, где мечтают медведи" (от 10 лет)',
      '16:30':
          'Литературно-игровое занятие "Ключ от сказки Романа Сефа" (5-7 лет)',
    };
 */
    final Map<String, String> eventsA = {
      '10:00':
          'Литературно-игровое занятие «Мы едем в Дедморозовку» - по книгам Андрея Усачева (5-7 лет)',
      '14:00':
          'Квест «Секретное слово для МАКСа, или Посвящение в пятиклассники» (от 10 лет)',
      '15:00':
          'Кинопросмотр и обсуждение фильма «Шайба» с обзором художественных книг по теме: дружба и взаимовыручка (от 10 лет)',
    };
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeAfisha02);
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
/*               const AfishaHeaderEvent(
                head: '25 октября - понедельник',
              ),
              ...events.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              const AfishaBottomEvent(),
 */ /********************* */

              const AfishaHeaderEvent(
                head: '14 декабря – вторник',
              ),

              ...eventsA.entries
                  .map((e) => AfishaEvent(time: e.key, information: e.value)),
              //const AfishaBottomEvent(),

              const Expanded(
                flex: 8,
                child: SizedBox(),
              ),
              //const BottomLeftRight(next_steep: GlobalVar.routeAfisha03),
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
