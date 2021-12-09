import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/theme/screen.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ElectronicCatalogA extends StatelessWidget {
  const ElectronicCatalogA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeECatalogHtml);
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
                    child: Text(
                      'Электронный каталог.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''
• База «Литературные премии» хранит информацию о писателях-лауреатах и произведениях-лауреатах какой-либо литературной премии;
• База «Медиатека» отражает содержание аудио-, видео-, электронных изданий;
• База «Читайка» содержит информацию о книгах для дошкольников и младших школьников и их родителей.
  
      В электронном каталоге предложены шесть видов поиска. Поиск «Стандартный» и «По словарю» предназначены для начинающих пользователей. Вид поиска «Расширенный», «Профессиональный», «Распределенный» и «ББК-навигатор» рассчитан на библиотечного работника или квалифицированного читателя.

      При поиске не имеет значение строчными или прописными буквами вы набираете то, что вам необходимо найти. 

      Воспользоваться электронным каталогом можно как в стенах библиотеки на любом компьютере, так и вне стен библиотеки через сайт нашего учреждения www.db74.ru

      Если у вас остались вопросы или вы хотите обучиться поиску в электронном каталоге, обратитесь к сотрудникам библиотеки.
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
