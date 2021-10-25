//not using
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:provider/src/provider.dart';

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
          //context.read<RoutingData>().isReturnActive()
          true
              ? SizedBox(
                  width: 150,
                  height: 150,
                  child: FloatingActionButton(
                    onPressed: () => context.read<RoutingData>().returnBack,
                    child: const FittedBox(
                        child: Icon(
                      Icons.arrow_back,
                      size: 32,
                    )),
                    backgroundColor: Colors.red,
                  ),
                )
              : SizedBox(),
          next_steep.isNotEmpty
              ? SizedBox(
                  width: 150,
                  height: 150,
                  child: FloatingActionButton(
                    onPressed: () =>
                        context.read<RoutingData>().setRoute(next_steep),
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
