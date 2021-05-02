import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/global_func.dart';

class SayHi04 extends StatelessWidget {
  const SayHi04({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            alignment: Alignment.center,
            color: Colors.white,
            child: SizedBox(
              width: isMobile(context)
                  ? constraints.maxWidth * 0.8
                  : constraints.maxWidth * 0.6,
              child: AutoSizeText(
                'The easiest\nway to say "Hi"\nother than walking over.',
                maxFontSize: 45,
                minFontSize: 28,
                presetFontSizes: [45, 40, 38, 34, 30, 28],
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
