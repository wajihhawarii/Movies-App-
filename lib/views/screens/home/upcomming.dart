import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/home/upcoming.dart';
import 'package:movietrain/core/functions/sliderlist.dart';

class UpComing extends StatelessWidget {
  const UpComing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sliderList(upComingList, "UpComing ", getupcoming()),
        ],
      ),
    );
  }
}
