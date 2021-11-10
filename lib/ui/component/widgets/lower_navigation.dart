import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gorky_name/data/routing_data.dart';
// ignore: implementation_imports
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
                    size: 44,
                  )),
                  backgroundColor: Colors.red,
                ),
              )
            : const SizedBox(width: 100, height: 100),
        context.read<RoutingData>().isReturnActive()
            ? SizedBox(
                width: 125,
                height: 125,
                child: FloatingActionButton(
                  onPressed: () => context.read<RoutingData>().goMainMenu(),
                  child: const FittedBox(
                      child: Icon(
                    Icons.home,
                    size: 56,
                  )),
                  backgroundColor: Colors.red,
                ),
              )
            : const SizedBox(),
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
                    size: 44,
                  )),
                  backgroundColor: Colors.red,
                ),
              )
            : const SizedBox(width: 100, height: 100),
      ],
    );
  }
}
