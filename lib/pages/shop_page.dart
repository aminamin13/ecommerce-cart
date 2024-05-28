import 'package:ecommerce_cart/components/Item_contaner.dart';
import 'package:ecommerce_cart/components/my_drawer.dart';
import 'package:ecommerce_cart/model/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final itemcontroller = context.watch<ItemController>().items;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        actions: [Icon(Icons.shopping_cart_checkout_outlined)],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("Choose your favorite products",
                style: TextStyle(fontSize: 15)),
            SizedBox(
              height: 500,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemcontroller.length,
                itemBuilder: (context, index) {
                  final item = itemcontroller[index];

                  return ItemContainer(
                    item: item,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
