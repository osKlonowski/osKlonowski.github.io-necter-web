import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/contact_page/contact_page_router.dart';
import 'package:necter_web/screens/faq_page/faq_page_router.dart';
import 'package:necter_web/screens/home_page/home_page_router.dart';
import 'package:necter_web/screens/how_it_works_page/howitworks_page_router.dart';
import 'package:necter_web/screens/legal/privacy_policy.dart';
import 'package:necter_web/screens/legal/terms_and_conditions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Necter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: periwinkle,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      builder: EasyLoading.init(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePageRouter(),
        '/contact': (context) => ContactPageRouter(),
        '/faq': (context) => FAQPageRouter(),
        '/terms-and-conditions': (context) =>
            TermsAndConditions(docPath: 'assets/terms_and_conditions.pdf'),
        '/privacy-policy': (context) =>
            PrivacyPolicy(docPath: 'assets/privacy_policy.pdf'),
        '/imprint': (context) => ContactPageRouter(),
        '/features': (context) => HowItWorksPageRouter(),
      },
    );
  }
}
