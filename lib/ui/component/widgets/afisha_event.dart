import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AfishaEvent extends StatelessWidget {
  const AfishaEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Screen.width(context) > 500 ? 50 : 0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '11:00',
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.red)),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Занятие-знакомство «Вам знаком книжкин дом?»  для детей от 5 до 7 лет',
              style: GoogleFonts.oswald(
                  textStyle: Theme.of(context).textTheme.headline6!),
              //overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
