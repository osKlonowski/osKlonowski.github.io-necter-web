import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/global_func.dart';

class ContactGrid2 extends StatelessWidget {
  const ContactGrid2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              gradient: blueGreenGradient,
            ),
            padding: isMobile(context)
                ? contactGridItemMainPadding
                : contactListItemMobilePadding,
            child: Center(
              child: SizedBox(
                width: isMobile(context)
                    ? constraints.maxWidth * 0.7
                    : constraints.maxWidth * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Contact',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'business@necter.io',
                        style: GoogleFonts.poppins(
                          fontSize: isMobile(context) ? 20 : 24.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '+49 898234827',
                        style: GoogleFonts.poppins(
                          fontSize: isMobile(context) ? 20 : 24.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '+48 887820010',
                        style: GoogleFonts.poppins(
                          fontSize: isMobile(context) ? 20 : 24.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
