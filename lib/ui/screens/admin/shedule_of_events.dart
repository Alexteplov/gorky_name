import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:provider/provider.dart';

class SheduleOfEvents extends StatefulWidget {
  const SheduleOfEvents({Key? key}) : super(key: key);

  @override
  State<SheduleOfEvents> createState() => _SheduleOfEventsState();
}

class _SheduleOfEventsState extends State<SheduleOfEvents> {
  @override
  Widget build(BuildContext context) {
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: Screen.height(context),
            width: Screen.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(GlobalVar.bgImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const LibraryLogo(),
        ],
      ),
    );
  }
}
