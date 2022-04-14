import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/internal/theme/screen.dart';

class AfishaEvent extends StatelessWidget {
  const AfishaEvent({Key? key, required this.time, required this.information})
      : super(key: key);
  final String time;
  final String information;

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              time,
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
                information,
                style: GoogleFonts.oswald(
                    textStyle: Theme.of(context).textTheme.headline5!),
                //overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
