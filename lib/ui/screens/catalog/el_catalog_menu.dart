//Библиотека в сети
import 'package:flutter/widgets.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class ElCatalogMenu extends StatelessWidget {
  const ElCatalogMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                //MainMenu(),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.eCatalog,
                  route: GlobalVar.routeECatalog,
                  logo: GlobalVar.logoIrbis,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.elCatalogChildren,
                  route: GlobalVar.routeECatalogKids,
                  logo: GlobalVar.logoIrbisKids,
                  buttonHeight: 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
