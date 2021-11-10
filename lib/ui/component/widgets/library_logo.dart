import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class LibraryLogo extends StatelessWidget {
  const LibraryLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        left: Screen.width(context) / 2 - Screen.width(context) * 0.7 / 2,
        top: 20,
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
      );
}
