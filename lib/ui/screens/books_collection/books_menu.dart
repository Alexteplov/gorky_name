//Библиотека в сети
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class BooksMenu extends StatelessWidget {
  const BooksMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
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
          const LibraryLogo(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Серия книг',
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                //MainMenu(),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.booksCollectionTravel,
                  route: GlobalVar.routeBookCollectionTravels,
                  logo: BooksCollectionData.logoBooksCollection,
                  buttonHeight: 0.08,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.booksCollectionRussia,
                  route: GlobalVar.routeBookCollectionRussia,
                  logo: BooksCollectionData.logoBooksCollection,
                  //buttonHeight: 0.1,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.booksCollectionHistory,
                  route: GlobalVar.routeBookCollectionHistory,
                  logo: BooksCollectionData.logoBooksCollection,
                  //buttonHeight: 0.1,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.booksCollectionGorky,
                  route: GlobalVar.routeBookCollectionGorky,
                  logo: BooksCollectionData.logoBooksCollectionG,
                  //buttonHeight: 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
