import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';

class MainMenu extends Widget {
  const MainMenu({Key? key}) : super(key: key);

  //var arr = [GlobalMenu.structure, GlobalMenu.billboard];
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(300, 80),
              textStyle: Theme.of(context).textTheme.headline4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: const Text(GlobalVar.structure),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(300, 80),
              textStyle: Theme.of(context).textTheme.headline4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: const Text(GlobalVar.billboard),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
