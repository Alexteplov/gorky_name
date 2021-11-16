import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';
import 'package:gorky_name/ui/theme/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryStructure extends StatefulWidget {
  const LibraryStructure({Key? key}) : super(key: key);

  @override
  _LibraryStructureState createState() => _LibraryStructureState();
}

class _LibraryStructureState extends State<LibraryStructure> {
  bool _showPreview = false;
  String _image = GlobalVar.bgImgAfishaWeekendsW;
  static double rectangleSide = 200;
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
          Positioned(
            top: 400,
            left: 100,
            child: Stack(
              children: [
                ClipPath(
                  clipper: StructCustomClipper(), // <--
                  child: Container(
                    width: rectangleSide,
                    height: rectangleSide,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: rectangleSide * 0.025,
                  left: rectangleSide * 0.025,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPreview = !_showPreview;
                        _image = StructureData.meetingEventHall;
                        //print(_showPreview);
                      });
                    },
                    child: Container(
                      width: rectangleSide - (rectangleSide * 0.05),
                      height: rectangleSide - (rectangleSide * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(StructureData.meetingEventHall),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 412,
            left: 315,
            child: Image.asset(
              StructureData.redBookmark,
              width: 240,
              height: 40,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 412,
            left: 320,
            child: SizedBox(
              width: 680,
              height: 200,
              child: Flexible(
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: StructureData.roomMeetingEventHead,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                      TextSpan(
                        text: StructureData.roomMeetingEvent,
                        style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline5!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                    });
                  },
                  child: Image.asset(
                    _image,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
