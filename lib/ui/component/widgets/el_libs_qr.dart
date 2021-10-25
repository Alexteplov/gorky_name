import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
//import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ElLibsQr extends StatelessWidget {
  const ElLibsQr({Key? key, required this.nameLib, required this.qrCode})
      : super(key: key);
  final String nameLib;
  final String qrCode;

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
              children: [
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    nameLib,
                    style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.headline3!),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 4,
                  child: qrCode.isNotEmpty
                      ? Container(
                          width: 580,
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(qrCode),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : Container(),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                //const Expanded(flex: 1, child: BottomLeftRight()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
