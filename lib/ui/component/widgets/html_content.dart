// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class HtmlContent extends StatefulWidget {
  String srcUrl;
  HtmlContent({Key? key, required this.srcUrl}) : super(key: key);

  @override
  _HtmlContentState createState() => _HtmlContentState(srcUrl);
}

class _HtmlContentState extends State<HtmlContent> {
  late Widget _iframeWidget;
  html.IFrameElement _iframeElement = html.IFrameElement();
  String srcUrl;
  _HtmlContentState(this.srcUrl) {
    Future.delayed(
        const Duration(milliseconds: 1000),
        () => setState(() {
              _iframeElement.src = srcUrl;
              print('Future url=${srcUrl}');
            }));
  }

  @override
  void initState() {
    super.initState();
    _iframeElement.height = '1670';
    //(Screen.height(context) - 250).toString();
    _iframeElement.width = '1080';
    //Screen.width(context).toString();

    _iframeElement.src = srcUrl;

    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
    print('url=${srcUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: (Screen.height(context) - 250),
          width: Screen.width(context),
          child: _iframeWidget,
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
