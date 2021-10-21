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
            left: 0,
            top: 5,
            width: Screen.width(context),
            height: Screen.width(context) * 0.29,
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuButton(context: context, nameButton: GlobalVar.structure),
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
