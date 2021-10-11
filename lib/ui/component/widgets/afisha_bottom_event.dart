import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class AfishaBottomEvent extends StatelessWidget {
  const AfishaBottomEvent({Key? key}) : super(key: key);

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
              'Обязательно предварительная запись.',
              style: GoogleFonts.oswald(
                  textStyle: Theme.of(context).textTheme.headline4!),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Телефон: 8(351)264-75-30',
                style: GoogleFonts.oswald(
                    textStyle: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.red)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
