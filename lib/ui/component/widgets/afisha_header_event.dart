import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AfishaHeaderEvent extends StatelessWidget {
  const AfishaHeaderEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '05 Октября',
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.headline4!),
          ),
        ),
      ],
    );
  }
}
