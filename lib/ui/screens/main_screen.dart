import 'package:flutter/material.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/main_appbar.dart';
import 'package:gorky_name/ui/component/widgets/main_menu.dart';
//import 'package:gorky_name/ui/component/widgets/main_menu.dart';
import 'package:provider/src/provider.dart';

import '../../main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blueGrey.shade200,
      appBar: MainAppBar(context),
      body: context.watch<RoutingData>().getWidget,
      //RoutingData().getWidget,
    );
  }
}
