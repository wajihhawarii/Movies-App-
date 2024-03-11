import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';

PreferredSizeWidget? aboutInfoAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: AppColor.white,
          size: 30,
        )),
    title: const Text(
      "About Me",
      style: TextStyle(
          color: AppColor.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    ),
    backgroundColor: AppColor.black,
  );
}
