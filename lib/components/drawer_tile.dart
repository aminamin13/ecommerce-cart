import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile(
      {super.key, required this.name, required this.icon, required this.onTap});
  final String name;
  final IconData? icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap!();
      },
      title: Text(name,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade500)),
      horizontalTitleGap: 30,
      leading: Icon(icon, color: Colors.grey.shade500, size: 30),
    );
  }
}
