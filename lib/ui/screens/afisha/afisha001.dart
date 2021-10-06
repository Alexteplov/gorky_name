import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/afisha_bottom_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_header_event.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Afisha extends StatelessWidget {
  const Afisha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(GlobalVar.nameLib),
      ),
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
                Center(
                  child: Text(
                    'Афиша',
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline2!),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const AfishaHeaderEvent(),
                const AfishaEvent(),
                const AfishaEvent(),
                const AfishaEvent(),
                const AfishaBottomEvent(),
                /*
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '05 Октября',
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline4!),
                      ),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Screen.width(context) > 500 ? 50 : 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '11:00',
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline5!),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Занятие-знакомство «Вам знаком книжкин дом?»  для детей от 5 до 7 лет',
                          style: GoogleFonts.oswald(
                              textStyle:
                                  Theme.of(context).textTheme.headline6!),
                          //overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
