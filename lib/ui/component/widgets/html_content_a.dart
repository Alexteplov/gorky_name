// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class HtmlContentA extends StatefulWidget {
  const HtmlContentA({Key? key}) : super(key: key);

  @override
  _HtmlContentStateA createState() => _HtmlContentStateA();
}

class _HtmlContentStateA extends State<HtmlContentA> {
  late Widget _iframeWidget1;
  final html.IFrameElement _iframeElement1 = html.IFrameElement();

  @override
  void initState() {
    super.initState();
    _iframeElement1.height = '1670';
    //(Screen.height(context) - 250).toString();
    _iframeElement1.width = '1080';
    //Screen.width(context).toString();

    _iframeElement1.src = GlobalVar.urlECatalogKids;

    _iframeElement1.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement1',
      (int viewId) => _iframeElement1,
    );

    _iframeWidget1 = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement1',
    );
    //print('url=${srcUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: (Screen.height(context) - 250),
          width: Screen.width(context),
          child: _iframeWidget1,
        ),
/*         ElevatedButton.icon(
            onPressed: () => setState(() {
                  _iframeElement.src = srcUrl;
                  print('Button in change url =${srcUrl}');
                }),
            icon: const Icon(Icons.access_alarm),
            label: const Text('Перезагрузка URL'))
 */
      ],
    );
  }
}
