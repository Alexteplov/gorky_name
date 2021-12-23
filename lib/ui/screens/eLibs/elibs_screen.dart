import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class ElLibs extends StatelessWidget {
  const ElLibs({Key? key}) : super(key: key);

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
                    nameButton: GlobalVar.elNEDB,
                    route: GlobalVar.routeElLibNEDB,
                    logo: GlobalVar.logoNEDB),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.elNEB,
                    route: GlobalVar.routeElLibNEB,
                    logo: GlobalVar.logoNEB),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                    context: context,
                    nameButton: GlobalVar.elLitress,
                    route: GlobalVar.routeElLibLitres,
                    logo: GlobalVar.logoLitres),
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
