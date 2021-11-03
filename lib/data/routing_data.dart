import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/el_libs_qr.dart';
import 'package:gorky_name/ui/component/widgets/lower_navigation.dart';
import 'package:gorky_name/ui/component/widgets/main_menu.dart';
import 'package:gorky_name/ui/screens/afisha/afisha001.dart';
import 'package:gorky_name/ui/screens/afisha/afisha002.dart';
import 'package:gorky_name/ui/screens/afisha/afisha003.dart';
import 'package:gorky_name/ui/screens/afisha/afisha003a.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w01.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w01a.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w02.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w02a.dart';
import 'package:gorky_name/ui/screens/eLibs/elibs_screen.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure.dart';
import 'package:gorky_name/ui/screens/rules_for_readers.dart';

import '../const/const_variables.dart';

class RoutingData with ChangeNotifier {
  //String _route = GlobalVar.routeMainMenu;
  final _stackW = [];
  late final BuildContext _context;
  String _nextSteep = 'empty';
//  Widget get getWidget => const MainMenu();

  RoutingData(this._context);

  Widget get getWidget {
    return _stackW.isNotEmpty ? _stackW.last : const MainMenu();

    //return const MainMenu();
  }

  Widget get getLowerNavigation => LowerNavigation(context: _context);

  void goMainMenu() {
    _nextSteep = 'empty';
    _stackW.clear();
    //setStack(GlobalVar.routeMainMenu);
    notifyListeners();
  }

  void setRoute(String route) {
    if (route.isNotEmpty) {
      setStack(route);
    } else {
      setStack(GlobalVar.routeMainMenu);
    }

    notifyListeners();
  }

  void setRouteNextSteep(String route) {
    if (route.isNotEmpty) {
      _nextSteep = route;
      //print('set route = $route');
    } else {
      _nextSteep = 'empty';
    }
  }

  String get getNextSteep => _nextSteep;

  Widget get returnBack {
    _stackW.removeLast();
    if (_stackW.isEmpty) {
      _nextSteep = 'empty';
    }
    notifyListeners();
    return _stackW.isNotEmpty ? _stackW.last : const MainMenu();
  }

  bool isReturnActive() {
    return _stackW.isNotEmpty;
  }

  void setStack(String route) {
    if (route == GlobalVar.routeMainMenu) {
      _stackW.add(const MainMenu());
    } else if (route == GlobalVar.routeAfisha01) {
      _stackW.add(const Afisha());
    } else if (route == GlobalVar.routeAfisha02) {
      _stackW.add(const AfishaSecond());
    } else if (route == GlobalVar.routeAfisha03) {
      _stackW.add(const AfishaThird());
    } else if (route == GlobalVar.routeAfisha03a) {
      _stackW.add(const AfishaThirdA());
    } else if (route == GlobalVar.routeAfishaW01) {
      _stackW.add(const AfishaSaturday());
    } else if (route == GlobalVar.routeAfishaW01a) {
      _stackW.add(const AfishaSaturdayA());
    } else if (route == GlobalVar.routeAfishaW02) {
      _stackW.add(const AfishaSunday());
    } else if (route == GlobalVar.routeAfishaW02a) {
      _stackW.add(const AfishaSundayA());
    } else if (route == GlobalVar.routeElLibs) {
      _stackW.add(const ElLibs());
    } else if (route == GlobalVar.routeElLibLitres) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.elLitress, qrCode: GlobalVar.qrLitress));
    } else if (route == GlobalVar.routeElLibNEB) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.elNEBFull, qrCode: GlobalVar.qrNEB));
    } else if (route == GlobalVar.routeElLibNEDB) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.elNEDBFull, qrCode: GlobalVar.qrNEDB));
    } else if (route == GlobalVar.routeRules4Readers) {
      _stackW.add(const RulesForReaders());
    } else if (route == GlobalVar.routeLibiraryStructure) {
      _stackW.add(const LibraryStructure());
    } else {
      _stackW.add(const MainMenu());
      _nextSteep = 'empty';
    }
  }

  void setContext(BuildContext context) {
    _context = context;
  }

  //setRoute({String route}) {}
}
