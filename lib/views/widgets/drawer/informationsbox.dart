import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';

class InformationsBox extends StatelessWidget {
  final String content;
  const InformationsBox({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: ListView(
        children: [
          Text(
            content,
            style: const TextStyle(color: AppColor.white, fontSize: 17),
          )
        ],
      ),
    );
  }
}
