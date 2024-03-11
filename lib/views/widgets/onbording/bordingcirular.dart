import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';

class BordingCircle extends StatelessWidget {
  final int index;
  final int indexcirculr;

  const BordingCircle(
      {super.key, required this.index, required this.indexcirculr});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(10),
      height: index == indexcirculr ? 20 : 10,
      width: index == indexcirculr ? 20 : 10,
      decoration: BoxDecoration(
          color: index == indexcirculr ? AppColor.red : AppColor.white,
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
