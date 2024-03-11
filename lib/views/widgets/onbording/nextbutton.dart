import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/core/functions/pageview.dart';

class NextButton extends StatelessWidget {
  final PageController pageController;
  final int index;
  const NextButton(
      {super.key, required this.pageController, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goToNextPage(index, pageController, context);
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: const BoxDecoration(
            color: AppColor.blue,
            gradient: LinearGradient(colors: [
              AppColor.blue,
              AppColor.black,
            ]),
            boxShadow: [
              BoxShadow(offset: Offset(2, 2), color: AppColor.blue),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
        child: const Center(
          child: Text(
            "Next",
            style: TextStyle(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
