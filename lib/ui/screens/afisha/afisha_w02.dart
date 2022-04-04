import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
//import 'package:gorky_name/ui/component/widgets/afisha_qr_code.dart';
import 'package:gorky_name/ui/theme/screen.dart';
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
      '11:00': 'Кружок «Фиксики». Тема занятия «Динозавры» (от 5-7 лет)',
      '12:00':
          'Клуб «РасЧитайка». Литературное занятие «Час потехи с книгами Бориса Заходера» (4-7 лет)',
      '12:00 ':
          'Занятие клуба «Zero Waste». Тема занятия: «Пластиковая Земля. Немного о Zero Waste» (7-12 лет)',
      '12:00  ':
          'Фотоклуб «Искусство мобильной съемки» Тема: «Жанровое фото. Этюд и натюрморт» (от 14 лет)',
      '14:00':
          'Интерактивное образовательное занятие «Умный пол» - «Космические друзья» (от 8 лет)',
      '14:00 ':
          'Кинопросмотр семейного фильма «Три жизни Томасины» по мотивам о книги Пола Гэллико «Томасина» (от 10 лет)',
      '15:00': 'Мастер-класс «Ближе к звездам» (от 8 лет)',
      '16:00':
          'Клуб «БиблиоБЛОГИНГ». Занятие по теме: «Публичное выступление. Актерские техники и работа на камеру» (от 10 лет)',
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
                head: '10 апреля – воскресенье',
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
