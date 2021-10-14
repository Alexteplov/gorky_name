import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AfishaHeaderEvent extends StatelessWidget {
  const AfishaHeaderEvent({Key? key, required this.head}) : super(key: key);
  final String head;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              head,
              style: GoogleFonts.oswald(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
