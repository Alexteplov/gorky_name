//Библиотека в сети
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/menu_button.dart';
import 'package:gorky_name/ui/theme/screen.dart';
//import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class StaffMenu extends StatelessWidget {
  const StaffMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: Screen.height(context),
            width: Screen.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(GlobalVar.bgImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const LibraryLogo(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 350,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentAdministration,
                  route: GlobalVar.routeStaffAdministration,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentReaders,
                  route: GlobalVar.routeStaffDepReaders,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentSecRegAndInfo,
                  route: GlobalVar.routeStaffDepSecInfo,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentInfo,
                  route: GlobalVar.routeStaffDepInfo,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentCoordinations,
                  route: GlobalVar.routeStaffDepCoordination,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentFond,
                  route: GlobalVar.routeStaffDepFond,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentRedaction,
                  route: GlobalVar.routeStaffDepRedaction,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                MenuButton(
                  context: context,
                  nameButton: StaffData.departmentInformation,
                  route: GlobalVar.routeStaffDepInformation,
                  //logo: StaffData.staffLogo,
                  buttonHeight: 0.075,
                  buttonWidth: 0.8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
