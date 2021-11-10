import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'library_logo.dart';

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
          const LibraryLogo(),
          Center(
            child: Column(
              children: [
                const Expanded(
                  flex: 4,
                  child: SizedBox(),
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
                      : const SizedBox(),
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
