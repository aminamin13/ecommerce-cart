import 'package:ecommerce_cart/components/drawer_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DrawerHeader(
                  child: Icon(Icons.shopping_basket_outlined,
                      size: 100, color: Colors.grey.shade500)),
              DrawerTile(
                  name: "Shop".toUpperCase(),
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pushNamed(context, "shop_page");
                  }),
              DrawerTile(
                  name: "Cart".toUpperCase(),
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.pushNamed(context, "cart_page");
                  }),
              DrawerTile(
                  name: "Settings".toUpperCase(),
                  icon: Icons.settings,
                  onTap: () {
                    Navigator.pushNamed(context, "setting_page");
                  }),
              DrawerTile(
                  name: "About".toUpperCase(),
                  icon: Icons.info,
                  onTap: () {
                    Navigator.pushNamed(context, "about_page");
                  }),
              Spacer(
                flex: 1,
              ),
              DrawerTile(
                  name: "Exit".toUpperCase(),
                  icon: Icons.exit_to_app,
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
