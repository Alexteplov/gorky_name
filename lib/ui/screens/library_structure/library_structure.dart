import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/theme/screen.dart';

class LibraryStructure extends StatefulWidget {
  @override
  _LibraryStructureState createState() => _LibraryStructureState();
}

class _LibraryStructureState extends State<LibraryStructure> {
  final List<String> images = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
  ];

  bool _showPreview = false;
  final String _image = GlobalVar.bgImgAfishaWeekendsW;

  @override
  Widget build(BuildContext context) {
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
          IconButton(
            onPressed: () {
              setState(() {
                _showPreview = !_showPreview;
                //print(_showPreview);
              });
            },
            icon: const Icon(Icons.add_a_photo),
          ),
          if (_showPreview) ...[
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPreview = !_showPreview;
                      //print(_showPreview);
                    });
                  },
                  child: Image.asset(
                    _image,
                    height: 1000,
                    width: 600,
                  ),
                ),
              ),
            ),
          ],
          /* Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  StructureData.roomMeetingEvent,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  StructureData.roomReaders,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  StructureData.freeReadersPlace,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ), */
        ],
      ),
    );
  }
}
