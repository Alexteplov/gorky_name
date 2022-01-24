import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/ui/theme/screen.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ElectronicCatalogKids extends StatelessWidget {
  const ElectronicCatalogKids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .watch<RoutingData>()
        .setRouteNextSteep(GlobalVar.routeECatalogHtmlK);

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
                            .setRoute(GlobalVar.routeECatalogHtmlK);
                      },
                      child: Text(
                        'Электронный каталог книг для детей 8-10 лет',
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
                    '''    Электронный каталог книг для детей 8-10 лет – это иллюстрированный детский каталог.

    Он не только расскажет, о чём книга и где её взять, но и покажет, как она выглядит. 

    В новом каталоге есть не только простой поиск, но и тематические подборки. Каталог посоветует, что почитать по выбранной теме или просто что бы такого почитать интересного. 
    
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
                flex: 5,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
