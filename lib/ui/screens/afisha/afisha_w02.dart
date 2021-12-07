import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class AfishaSunday extends StatelessWidget {
  const AfishaSunday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> events = {
      '10:00 – 18:00':
          'День вопросов и ответов «Что ты должен знать о Конституции Российской Федерации»',
      '11:00': 'Просмотр диафильма «Сказка городка Жур-Жур» (4-7 лет)',
      '12:00':
          'Киноурок. Просмотр и обсуждение фильма «Большая восьмерка». Тема «Дружба» (от 8 лет)',
      '12:00':
          'Литературный клуб «РасЧитайка». Литературно- игровой час по сказкам Т. Александровой «Давай дружить, Кузька!»  (4-6 лет)',
      '14:30':
          'Интерактивное образовательное занятие «Умный пол» - «Медаль за логику» (6 -10 лет)',
      '14:30':
          'Клуб любителей настольных игр «Сто наСтолок». Игра «ДаНетки» (от 10  лет)',
      '15:00':
          'Творческая мастерская «#Сделай сам!». Мастер-класс «Новогодняя игрушка» с украшением Библиотечного Дерева (от 5 лет)',
      '16:00':
          'Клуб «Библиоголос». Занятие по ораторскому мастерству по теме: «Интонация»   (от 10 лет)',
    };
    context.watch<RoutingData>().setRouteNextSteep('empty');
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
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
                head: '12 декабря – воскресенье',
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
