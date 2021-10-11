import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomLeftRight extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const BottomLeftRight({Key? key, this.next_steep = ''}) : super(key: key);
  // ignore: non_constant_identifier_names
  final String next_steep;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Navigator.canPop(context)
              ? FloatingActionButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                  backgroundColor: Colors.red,
                )
              : Container(),
          next_steep.isNotEmpty
              ? FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, next_steep);
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    //size: 75,
                  ),
                  backgroundColor: Colors.red,
                )
              : Container(),
        ],
      ),
    );
  }
}
