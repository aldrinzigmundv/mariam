import 'package:flutter/material.dart';

import 'package:mariam/pages/mainpage.dart';
import 'package:mariam/pages/prayerpage.dart';
import 'package:mariam/pages/thankyoupage.dart';

goToMainPage(
    {required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) => const MainPage(
              )), (Route<dynamic> route) => false);
}

goToOrNextPrayerPage(
    {required BuildContext context, required int index, required List<String> rosary, required String image}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => PrayerPage(
        rosary: rosary,
        index: index,
        image: image
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}

goToThankYouPage(
    {required BuildContext context}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) => const ThankYouPage(
              )), (Route<dynamic> route) => false);
}