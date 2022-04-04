import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/html_content.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ElCatalogHtml extends StatelessWidget {
  final String urlSrc;
  final String uIdent;
  const ElCatalogHtml({Key? key, required this.urlSrc, required this.uIdent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: HtmlContent(
        srcUrl: urlSrc,
        uIdent: uIdent,
      ),
    );
  }
}
