import 'dart:math';

import 'package:gorky_name/ui/screens/admin/login_page.dart';
import 'package:gorky_name/ui/screens/admin/shedule_of_events.dart';
import 'package:gorky_name/ui/screens/afisha/afisha_w03a.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_books.dart';
import 'package:gorky_name/ui/screens/books_collection/book_collection_gorky.dart';
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
import 'package:gorky_name/ui/component/widgets/screen_html.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_kids.dart';
import 'package:gorky_name/ui/screens/catalog/el_catalog_menu.dart';
import 'package:gorky_name/ui/screens/eLibs/elibs_screen.dart';
import 'package:gorky_name/ui/screens/library_in_network/library_in_network.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure_a.dart';
import 'package:gorky_name/ui/screens/library_structure/library_structure_b.dart';
import 'package:gorky_name/ui/screens/rules_for_readers/rules_for_readers.dart';
import 'package:gorky_name/ui/screens/staff/staff_administration.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_coordination.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_fond.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_info.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_information.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_readers.dart';
import 'package:gorky_name/ui/screens/staff/staff_department_redaction.dart';
import 'package:gorky_name/ui/screens/staff/staff_menu.dart';

//import '../const/const_variables.dart';
import '../ui/screens/staff/staff_department_sector.dart';

class RoutingData with ChangeNotifier {
  //String _route = GlobalVar.routeMainMenu;
  final _stackW = [];
  late final BuildContext _context;
  DateTime eventDt = DateTime.now();
  String _nextSteep = GlobalVar.routeEmpty;

//  Widget get getWidget => const MainMenu();

  RoutingData(this._context);

  Widget get getWidget {
    return _stackW.isNotEmpty ? _stackW.last : const MainMenu();

    //return const MainMenu();
  }

  Widget get getLowerNavigation => LowerNavigation(context: _context);

  DateTime get getEventDt => eventDt;

  void goMainMenu() {
    _nextSteep = GlobalVar.routeEmpty;
    _stackW.clear();
    //setStack(GlobalVar.routeMainMenu);
    eventDt = DateTime.now();
    notifyListeners();
  }

  void setRoute(String route) {
    if (route.isNotEmpty) {
      setStack(route);
    } else {
      setStack(GlobalVar.routeMainMenu);
    }
    eventDt = DateTime.now();
    notifyListeners();
  }

  void setRouteNextSteep(String route) {
    if (route.isNotEmpty) {
      _nextSteep = route;
      //print('set route = $route');
    } else {
      _nextSteep = GlobalVar.routeEmpty;
    }
    //eventDt = DateTime.now();
  }

  String get getBgAfisha {
    return 'image/bgAfisha/0${Random().nextInt(9)}.jpg';
  }

  String get getNextSteep => _nextSteep;

  String get getAfishaRoute {
    DateTime _now =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    //DateTime _sDt = DateTime(2021, 12, 24);
    //Show default page
    String _retStr = GlobalVar.routeAfishaW01a;
    if (_now.compareTo(DateTime(2023, 11, 05)) <= 0) {
      _retStr = GlobalVar.routeAfisha01;
    } else if (_now.compareTo(DateTime(2023, 11, 07)) <= 0) {
      _retStr = GlobalVar.routeAfisha02;
    } else if (_now.compareTo(DateTime(2023, 11, 08)) <= 0) {
      _retStr = GlobalVar.routeAfisha03;
    } else if (_now.compareTo(DateTime(2023, 11, 09)) <= 0) {
      _retStr = GlobalVar.routeAfishaW01;
    } else if (_now.compareTo(DateTime(2023, 11, 10)) <= 0) {
      _retStr = GlobalVar.routeAfishaW02;
    } else if (_now.compareTo(DateTime(2023, 11, 11)) <= 0) {
      _retStr = GlobalVar.routeAfisha03a;
    } else if (_now.compareTo(DateTime(2023, 11, 12)) <= 0) {
      _retStr = GlobalVar.routeAfishaW01a;
    } else if (_now.compareTo(DateTime(2023, 08, 05)) <= 0) {
      _retStr = GlobalVar.routeAfishaW02a;
    }
    return _retStr;
  }

  Widget get returnBack {
    _stackW.removeLast();
    if (_stackW.isEmpty) {
      _nextSteep = GlobalVar.routeEmpty;
    }
    eventDt = DateTime.now();
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
      _stackW.add(const AfishaFirst());
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
    } else if (route == GlobalVar.routeAfishaW03a) {
      _stackW.add(const AfishaSundayA1());
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
      //rules for readers
    } else if (route == GlobalVar.routeRules4Readers) {
      _stackW.add(const RulesForReaders());
    } else if (route == GlobalVar.routeRulesForReadersHtml) {
      _stackW.add(const ScreenHtml(
        urlSrc: GlobalVar.urlRules,
        uIdent: GlobalVar.routeRules4Readers,
      ));
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
    } else if (route == GlobalVar.routeRuStore) {
      _stackW.add(const ElLibsQr(
          nameLib: GlobalVar.rustore, qrCode: GlobalVar.qrRuStore));
    }
    //eCatalog routeECatalogKids
    else if (route == GlobalVar.routeECatalogMenu) {
      _stackW.add(const ElCatalogMenu());
    } else if (route == GlobalVar.routeECatalog) {
      _stackW.add(const ElectronicCatalog());
    } else if (route == GlobalVar.routeECatalogA) {
      _stackW.add(const ElectronicCatalogA());
    } else if (route == GlobalVar.routeECatalogHtml) {
      _stackW.add(const ScreenHtml(
        urlSrc: GlobalVar.urlECatalog,
        uIdent: GlobalVar.routeECatalog,
      ));
    } else if (route == GlobalVar.routeECatalogKids) {
      _stackW.add(const ElectronicCatalogKids());
    } else if (route == GlobalVar.routeECatalogHtmlK) {
      _stackW.add(const ScreenHtml(
        urlSrc: GlobalVar.urlECatalogKids,
        uIdent: GlobalVar.routeECatalogKids,
      ));
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
    } else if (route == GlobalVar.routeBookCollectionGorky) {
      _stackW.add(const BookCollectionGorky());
    } else if (route == GlobalVar.routeBookCollectionBooks) {
      _stackW.add(const BookCollectionBooks());
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
    } else if (route == GlobalVar.routeStaffDepSecInfo) {
      _stackW.add(const StaffSector());
    } else if (route == GlobalVar.routeSheduleOfEvents) {
      _stackW.add(const SheduleOfEvents());
    } else if (route == GlobalVar.routeLoginPage) {
      _stackW.add(const LoginPage());
    } else {
      _stackW.add(const MainMenu());
      _nextSteep = GlobalVar.routeEmpty;
    }
  }

  void setContext(BuildContext context) {
    _context = context;
  }
}
