import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';

class DrawerNavigationItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final bool selected;
  final Function() onTap;
  final bool swapp;
  const DrawerNavigationItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.selected,
    required this.onTap,
    required this.swapp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      leading: Icon(
        iconData,
        color: swapp ? Colors.blue : AppColor.yellow,
      ),
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(
            color: swapp ? Colors.white : AppColor.black,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
      selectedTileColor: Colors.blueAccent.shade100,
      // selected: selected,
      selectedColor: Colors.black87,
    );
  }
}
