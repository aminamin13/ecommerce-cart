import 'package:ecommerce_cart/model/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeController>(context).isDarkMode;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text("Dark Mode"),
          trailing: Switch(
            activeColor: Theme.of(context).colorScheme.inversePrimary,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.green,
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                context.read<ThemeController>().toggleTheme();
              });
            },
          ),
        ),
      ),
    );
  }
}
