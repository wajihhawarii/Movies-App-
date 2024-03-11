import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/core/functions/pageview.dart';

class PreviousButton extends StatelessWidget {
  final PageController pageController;
  final int index;
  const PreviousButton(
      {super.key, required this.pageController, required this.index});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        goToPreviousPage(index, pageController);
      },
      child: const Text(
        "Skip",
        style: TextStyle(
            color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
