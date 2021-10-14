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
              ? SizedBox(
                  width: 150,
                  height: 150,
                  child: FloatingActionButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) Navigator.pop(context);
                    },
                    child: const FittedBox(
                        child: Icon(
                      Icons.arrow_back,
                      size: 32,
                    )),
                    backgroundColor: Colors.red,
                  ),
                )
              : Container(),
          next_steep.isNotEmpty
              ? SizedBox(
                  width: 150,
                  height: 150,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, next_steep);
                    },
                    child: const FittedBox(
                        child: Icon(
                      Icons.arrow_forward,
                      size: 32,
                    )),
                    backgroundColor: Colors.red,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
