import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomLeftRight extends StatelessWidget {
  const BottomLeftRight({Key? key, this.next_steep = ''}) : super(key: key);
  final String next_steep;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward),
                  backgroundColor: Colors.red,
                )
              : Container(),
        ],
      ),
    );
  }
}
