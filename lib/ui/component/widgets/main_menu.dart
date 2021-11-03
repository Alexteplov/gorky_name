import 'package:flutter/widgets.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

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
          Positioned(
            left: Screen.width(context) / 2 - Screen.width(context) * 0.7 / 2,
            top: 5,
            width: Screen.width(context) * 0.7,
            height: Screen.width(context) * 0.2,
            child: Center(
              child: Container(
                //height: Screen.height(context),
                width: Screen.width(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(GlobalVar.logoImg),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Screen.width(context) * 0.2 + 150,
            left: (Screen.width(context) - Screen.width(context) * 0.6) / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.colleagues,
                  //route: GlobalVar.routeElLibs
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.structure,
                    route: GlobalVar.routeLibiraryStructure),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.rules4Readers,
                    route: GlobalVar.routeRules4Readers),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.libInNetwork,
                  //route: GlobalVar.routeElLibs
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.elLibs,
                    route: GlobalVar.routeElLibs),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.eCatalog,
                  //route: GlobalVar.routeElLibs
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.booksCoolection,
                  //route: GlobalVar.routeElLibs
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.billboard,
                    route: GlobalVar.routeAfisha01),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
