import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/html_content.dart';
import 'package:gorky_name/ui/component/widgets/html_content_a.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ElCatalogHtmlA extends StatelessWidget {
  ElCatalogHtmlA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep('empty');
    return SafeArea(
      child: HtmlContentA(),
    );
  }
}
