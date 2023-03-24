//Библиотека в сети
import 'package:flutter/widgets.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';

class LibraryInNetwork extends StatelessWidget {
  const LibraryInNetwork({Key? key}) : super(key: key);

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
                  nameButton: GlobalVar.libInNet,
                  route: GlobalVar.routeLib,
                  logo: GlobalVar.logoLibInNet,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: GlobalVar.inContact,
                  route: GlobalVar.routeInContact,
                  logo: GlobalVar.logoInContact,
                ),
                const SizedBox(
                  height: 20,
                ),
/*                 MenuButton(
                  context: context,
                  nameButton: GlobalVar.instagram,
                  route: GlobalVar.routeInstagram,
                  logo: GlobalVar.logoInstagram,
                ),
                const SizedBox(
                  height: 20,
                ), */
/*                 MenuButton(
                  context: context,
                  nameButton: GlobalVar.tiktok,
                  route: GlobalVar.routeTikTok,
                  logo: GlobalVar.logoTiktok,
                ),
                const SizedBox(
                  height: 20,
                ), */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
