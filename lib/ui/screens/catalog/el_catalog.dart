import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/ui/theme/screen.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ElectronicCatalog extends StatelessWidget {
  const ElectronicCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeECatalogA);

    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: Screen.height(context),
            width: Screen.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(GlobalVar.bgImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<RoutingData>()
                            .setRoute(GlobalVar.routeECatalogHtml);
                      },
                      child: Text(
                        'Электронный каталог.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(
                                    color: Colors.redAccent,
                                    decoration: TextDecoration.underline)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''     Электронный каталог Централизованной системы детских библиотек содержит записи на книги, аудио-, видео-, электронные издания по всем отраслям знаний, статьи из периодических изданий, начиная с 1999 года, книги из коллекции детских изданий 20 века. Издания, вышедшие до 1999 года необходимо искать в карточных каталогах и картотеках.

      Библиографические записи распределены по Базам данных:
• База «Книги плюс» содержит информацию о книгах,  аудиокассетах, видеокассетах и дисках;
• База «Периодические издания и статьи» содержит информацию о периодических изданиях, которые выписывают наши библиотеки, а также отражает их содержание;
• База «Краеведение» собирает материал о Челябинске и Челябинской области. К некоторым записям подсоединены полные тексты;
• База «Методические материалы» содержит информацию из педагогических, библиотековедческих и литературоведческих изданий: сценарии праздников, классных часов, методические разработки уроков, литературоведческие статьи и т.д.;
• База «Стихи» содержит библиографические записи на детские стихи отечественных и зарубежных авторов. К некоторым записям подсоединены полные тексты стихотворений.
• База «Нина Пикулева» содержит библиографические записи на издания челябинского детского поэта Нины Васильевны Пикулевой и литературу о ней.
• База «Электронные презентации» содержит библиографические записи о презентациях по разным отраслям знаний, созданных сотрудниками нашей системы, 
''',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black87)),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
