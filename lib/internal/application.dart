import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/generated/l10n.dart';
import 'package:gorky_name/internal/theme/custom_theme.dart';
import 'package:gorky_name/ui/screens/main_screen.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: GlobalVar.nameLib,
      theme: CustomTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}
