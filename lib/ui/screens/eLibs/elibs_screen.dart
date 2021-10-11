import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class ElLibs extends StatelessWidget {
  const ElLibs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blueGrey.shade200,
      appBar: MainAppBar(context),

      body: SafeArea(
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
                  //MainMenu(),
                  MenuButton(
                      context: context,
                      nameButton: GlobalVar.elNEDB,
                      route: GlobalVar.routeElLibNEDB),
                  const SizedBox(
                    height: 20,
                  ),
                  MenuButton(
                    context: context,
                    nameButton: GlobalVar.elNEB,
                    route: GlobalVar.routeElLibNEB,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MenuButton(
                      context: context,
                      nameButton: GlobalVar.elLitress,
                      route: GlobalVar.routeElLibLitres),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
