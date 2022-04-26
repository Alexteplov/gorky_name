import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
import 'package:gorky_name/internal/theme/screen.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerL = TextEditingController();
  final TextEditingController _controllerP = TextEditingController();
  String _login = '', _pass = '';
  @override
  void dispose() {
    _controllerL.dispose();
    _controllerP.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
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
          Positioned(
            top: 400,
            left: 20,
            child: SizedBox(
              height: 400,
              width: Screen.width(context) - 40,
              child: Column(
                children: [
                  TextField(
                    controller: _controllerL,
                    onChanged: (String value) async {
                      _login = value;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Login'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _controllerP,
                    onChanged: (String value) async {
                      _pass = value;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_login.compareTo(GlobalVar.login) == 0 &&
                            _pass.compareTo(GlobalVar.password) == 0) {
                          context
                              .read<RoutingData>()
                              .setRoute(GlobalVar.routeSheduleOfEvents);
                        } else {
                          context.read<RoutingData>().goMainMenu();
                        }
                      },
                      child: const Text(
                        "Войти",
                        style: TextStyle(fontSize: 14),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
