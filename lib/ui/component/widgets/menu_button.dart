import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/theme/screen.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

// ignore: must_be_immutable
class MenuButton extends StatelessWidget {
  MenuButton(
      {Key? key,
      required this.context,
      required this.nameButton,
      this.route = ''})
      : super(key: key);

  final BuildContext context;
  final String nameButton;
  String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize:
              Size(Screen.width(context) * 0.6, Screen.height(context) * 0.083),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {
        if (route.isNotEmpty) {
          context.read<RoutingData>().setRoute(route);
          //Navigator.pushNamed(context, route);
          //print('route ${route}');
        }
      },
      child: Text(
        nameButton,
        textAlign: TextAlign.center,
      ),
    );
  }
}
