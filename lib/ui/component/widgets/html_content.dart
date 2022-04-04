// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gorky_name/ui/theme/screen.dart';

// ignore: must_be_immutable
class HtmlContent extends StatefulWidget {
  final String srcUrl;
  final String uIdent;

  const HtmlContent({Key? key, required this.srcUrl, required this.uIdent})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _HtmlContentState createState() => _HtmlContentState(srcUrl, uIdent);
}

class _HtmlContentState extends State<HtmlContent> {
  late Widget _iframeWidget;
  final html.IFrameElement _iframeElement = html.IFrameElement();
  final String srcUrl;
  final String uIdent;
  _HtmlContentState(this.srcUrl, this.uIdent);

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
      uIdent,
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: uIdent,
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
          child: _iframeWidget,
        ),
      ],
    );
  }
}
