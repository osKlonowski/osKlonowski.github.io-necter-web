import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';

class TitleElement extends StatelessWidget {
  const TitleElement({
    @required this.title,
    @required this.icon,
    @required this.iconColor,
    @required this.alignText,
    @required this.alignBox,
    @required this.backgroundColor,
    @required this.textColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
  final TextAlign alignText;
  final CrossAxisAlignment alignBox;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            alignment: Alignment.center,
            color: backgroundColor,
            child: SizedBox(
              width: constraints.maxWidth / 1.618,
              height: constraints.maxHeight / 1.618,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: alignBox,
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                    size: 60,
                  ),
                  SizedBox(height: 12),
                  Text(
                    title,
                    textAlign: alignText,
                    style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
