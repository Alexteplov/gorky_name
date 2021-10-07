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
/*
                const SizedBox(
                  height: 50,
                ),
 */
                const Expanded(
                  flex: 1,
                  child: AfishaHeaderEvent(),
                ),
                const AfishaEvent(
                  time: '11:00',
                  information:
                      'Программа «ЭКО — что-то». Познавательный час «Что такое экология?» (7-10 лет)',
                ),
                const AfishaEvent(
                  time: '14:00',
                  information:
                      'Литературно-игровое занятие «Играй-городок Нины Пикулевой» (5-7 лет)',
                ),
                const AfishaEvent(
                  time: '16:00',
                  information:
                      'Интерактивное занятие по 4D-энциклопедии «Животный мир» (от 10 лет)',
                ),
                const AfishaBottomEvent(),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                BottomLeftRight(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
