import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class OldSchool06 extends StatelessWidget {
  const OldSchool06({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            color: green,
            padding: gridItemMainPadding,
            child: Center(
              child: SizedBox(
                width: constraints.maxWidth / 1.618,
                height: constraints.maxHeight / 1.618,
                child: Image.asset(
                  'assets/animations/old_school.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
        },
      ),
    );
    // return AspectRatio(
    //   aspectRatio: 1 / 1,
    //   child: LayoutBuilder(
    //     builder: (BuildContext ctx, BoxConstraints constraints) {
    //       return Container(
    //         padding: gridItemMainPadding,
    //         color: green,
    //         alignment: Alignment.center,
    //         child: SizedBox(
    //           width: constraints.maxWidth / 1.618,
    //           height: constraints.maxWidth / 1.618,
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Flexible(
    //                 child: AutoSizeText(
    //                   'OLD SCHOOL DATING\n',
    //                   maxFontSize: 45,
    //                   minFontSize: 28,
    //                   presetFontSizes: [45, 40, 38, 34, 30, 28],
    //                   textAlign: TextAlign.right,
    //                   style: GoogleFonts.pressStart2p(
    //                     fontSize: 33.0,
    //                     fontWeight: FontWeight.w700,
    //                     color: Colors.white,
    //                     letterSpacing: 0.8,
    //                   ),
    //                 ),
    //               ),
    //               Flexible(
    //                 child: AutoSizeText(
    //                   'NEW SCHOOL TECH',
    //                   maxFontSize: 45,
    //                   minFontSize: 28,
    //                   presetFontSizes: [45, 40, 38, 34, 30, 28],
    //                   textAlign: TextAlign.right,
    //                   style: GoogleFonts.raleway(
    //                     fontSize: 50.0,
    //                     fontWeight: FontWeight.w700,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
