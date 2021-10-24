import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:provider/src/provider.dart';

class LowerNavigation extends StatelessWidget {
  const LowerNavigation({Key? key, required this.context}) : super(key: key);
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        context.read<RoutingData>().isReturnActive()
            ? SizedBox(
                width: 100,
                height: 100,
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
            : Container(),
        context.read<RoutingData>().getNextSteep != 'empty'
            ? SizedBox(
                width: 100,
                height: 100,
                child: FloatingActionButton(
                  onPressed: () => context
                      .read<RoutingData>()
                      .setRoute(context.read<RoutingData>().getNextSteep),
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
    );
  }
}
