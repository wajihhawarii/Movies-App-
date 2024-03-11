import 'package:flutter/material.dart';
import 'package:movietrain/services/myservices.dart';
import 'package:movietrain/views/screens/home/homepage.dart';

void goToNextPage(
    int index, PageController pageController, BuildContext context) {
  if (index < 2) {
    index++;
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.linearToEaseOut,
    );
  } else {
    MyServices.sharedPreferences.setString("key", "1");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }
}

void goToPreviousPage(int index, PageController pageController) {
  if (index > 0) {
    index--;
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  } else {}
}
