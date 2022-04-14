import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/internal/theme/screen.dart';

class AfishaQrCode extends StatelessWidget {
  const AfishaQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Screen.width(context) > 500 ? 50 : 0,
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Смотрите в ВКонтакте:',
                style: GoogleFonts.oswald(
                    textStyle: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.red)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Flexible(
              child: Image.asset(
            GlobalVar.qrContact,
            width: 300,
            height: 135,
          )),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Смотрите в Инстраграм:',
                style: GoogleFonts.oswald(
                    textStyle: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.red)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Flexible(
              child: Image.asset(
            GlobalVar.qrInstagram,
            width: 300,
            height: 135,
          )),
        ],
      ),
    );
  }
}
