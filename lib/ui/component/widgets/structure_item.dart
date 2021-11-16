/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gorky_name/ui/component/widgets/struct_custom_clipper.dart';

class StructureItem extends StatelessWidget {
  const StructureItem({Key? key, required this.itemTop, required this.itemLeft}) : super(key: key);
  final double itemTop;
  final double itemLeft;
  static double rectangleSide = 200;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: itemTop,
      left: itemLeft,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
                          //print(_showPreview);
                        });
                      },
                      child: Container(
                        width: rectangleSide - (rectangleSide * 0.05),
                        height: rectangleSide - (rectangleSide * 0.05),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(GlobalVar.bgImgAfishaWeekendsW),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                textDirection: TextDirection.ltr,
                alignment: AlignmentDirectional.topStart,
                children: [
                  Positioned(
                    top: 12,
                    left: 15,
                    child: Image.asset(
                      'image/structure/red_bookmark.png',
                      width: 240,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 8),
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
                                    textStyle:
                                        Theme.of(context).textTheme.headline5!),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 */