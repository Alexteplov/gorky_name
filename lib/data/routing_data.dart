import 'package:flutter/cupertino.dart';
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
import 'package:gorky_name/ui/screens/books_collection/book_collection_history.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_history_a.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_russia.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_russia_a.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_travels.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_travels_a.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_travels_b.dart';
import 'package:gorky_name/ui/screens/books_collection/books_menu.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_a.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_html.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_html_a.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_kids.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_menu.dart';
import 'package:gorky_name/ui/screens/eLibs/elibs_screen.dart';
import 'package:gorky_name/ui/screens/library_in_network/library_in_network.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure_a.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure_b.dart';
import 'package:gorky_name/ui/screens/rules_for_readers.dart';
import 'package:gorky_name/ui/screens/staff/staff_administration.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_coordination.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_fond.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_info.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_information.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_readers.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_redaction.dart';
import 'package:gorky_name/ui/screens/staff/staff_menu.dart';

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
    } else if (route == GlobalVar.routeLibiraryStructureA) {
      _stackW.add(const LibraryStructureA());
    } else if (route == GlobalVar.routeLibiraryStructureB) {
      _stackW.add(const LibraryStructureB());
    } else if (route == GlobalVar.routeLibInNetwork) {
      _stackW.add(const LibraryInNetwork());
//QR codes from social network
    } else if (route == GlobalVar.routeLib) {
      _stackW.add(
          const ElLibsQr(nameLib: GlobalVar.libInNet, qrCode: GlobalVar.qrLib));
    } else if (route == GlobalVar.routeInContact) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.inContact, qrCode: GlobalVar.qrContact));
    } else if (route == GlobalVar.routeInstagram) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.instagram, qrCode: GlobalVar.qrInstagram));
    } else if (route == GlobalVar.routeTikTok) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.tiktok, qrCode: GlobalVar.qrTikTok));
    }
    //eCatalog routeECatalogKids
    else if (route == GlobalVar.routeECatalogMenu) {
      _stackW.add(const ElCatalogMenu());
    } else if (route == GlobalVar.routeECatalog) {
      _stackW.add(const ElectronicCatalog());
    } else if (route == GlobalVar.routeECatalogA) {
      _stackW.add(const ElectronicCatalogA());
    } else if (route == GlobalVar.routeECatalogHtml) {
      _stackW.add(ElCatalogHtml(
        urlSrc: GlobalVar.urlECatalog,
      ));
    } else if (route == GlobalVar.routeECatalogKids) {
      _stackW.add(const ElectronicCatalogKids());
    } else if (route == GlobalVar.routeECatalogHtmlK) {
      _stackW.add(ElCatalogHtmlA());
    }
    //books collection
    else if (route == GlobalVar.routeBookCollectionMenu) {
      _stackW.add(const BooksMenu());
    } else if (route == GlobalVar.routeBookCollectionTravels) {
      _stackW.add(const BookCollectionTravels());
    } else if (route == GlobalVar.routeBookCollectionTravelsA) {
      _stackW.add(const BookCollectionTravelsA());
    } else if (route == GlobalVar.routeBookCollectionTravelsB) {
      _stackW.add(const BookCollectionTravelsB());
    } else if (route == GlobalVar.routeBookCollectionRussia) {
      _stackW.add(const BookCollectionRussia());
    } else if (route == GlobalVar.routeBookCollectionRussiaA) {
      _stackW.add(const BookCollectionRussiaA());
    } else if (route == GlobalVar.routeBookCollectionHistory) {
      _stackW.add(const BookCollectionHistory());
    } else if (route == GlobalVar.routeBookCollectionHistoryA) {
      _stackW.add(const BookCollectionHistoryA());

      //Staff menu routeStaffMenu
    } else if (route == GlobalVar.routeStaffMenu) {
      _stackW.add(const StaffMenu());
    } else if (route == GlobalVar.routeStaffAdministration) {
      _stackW.add(const StaffAdministration());
    } else if (route == GlobalVar.routeStaffDepReaders) {
      _stackW.add(const StaffDepartmentReaders());
    } else if (route == GlobalVar.routeStaffDepInfo) {
      _stackW.add(const StaffDepartmentInfo());
    } else if (route == GlobalVar.routeStaffDepCoordination) {
      _stackW.add(const StaffDepartmentCoordination());
    } else if (route == GlobalVar.routeStaffDepFond) {
      _stackW.add(const StaffDepartmentFond());
    } else if (route == GlobalVar.routeStaffDepRedaction) {
      _stackW.add(const StaffDepartmentRedaction());
    } else if (route == GlobalVar.routeStaffDepInformation) {
      _stackW.add(const StaffDepartmentInformation());
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
