import 'package:flutter/material.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/bottom_left_rigth.dart';
import 'package:gorky_name/ui/component/widgets/lower_navigation.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/component/widgets/main_menu.dart';
//import 'package:gorky_name/ui/component/widgets/main_menu.dart';
import 'package:provider/src/provider.dart';

import '../../main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context.watch<RoutingData>().setContext(context);
    return Scaffold(
//      backgroundColor: Colors.blueGrey.shade200,
      appBar: MainAppBar(context),
      body: context.watch<RoutingData>().getWidget,
      floatingActionButton: context.watch<RoutingData>().getLowerNavigation,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //RoutingData().getWidget,
    );
  }
}
