import 'package:flutter/material.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/application.dart';
import 'package:provider/provider.dart';

import 'internal/hive_init.dart';

void main() {
  HiveInit.init;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => RoutingData(_)),
    ],
    child: const Application(),
  ));
}
