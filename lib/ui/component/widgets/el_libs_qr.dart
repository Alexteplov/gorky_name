import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ElLibsQr extends StatelessWidget {
  const ElLibsQr({Key? key, required this.nameLib}) : super(key: key);
  final String nameLib;

  @override
  Widget build(BuildContext context) {
    var qrCode = 'image/QR_nedb.png';
/*
    if (nameLib == GlobalVar.elLitress)
      qrCode = 'image/QR_nedb.png';
    else if (nameLib == GlobalVar.elNEB)
      qrCode = 'image/QR_nedb.png';
    else if (nameLib == GlobalVar.elNEDB) qrCode = 'image/QR_nedb.png';
*/
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
                children: [
                  SizedBox(
                    height: Screen.width(context) * 0.4,
                  ),
                  Text(
                    nameLib,
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline3!),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  qrCode.isNotEmpty
                      ? Container(
                          width: 450,
                          height: 450,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('image/QR_nedb.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : Container(),
                  Positioned(
                      top: Screen.height(context) - 30,
                      child: const BottomLeftRight()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
