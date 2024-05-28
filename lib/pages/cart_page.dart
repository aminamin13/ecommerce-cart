import 'package:ecommerce_cart/model/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cart", style: TextStyle(fontSize: 30)),
              Text("Check your cart before paying!",
                  style: TextStyle(fontSize: 15)),
              context.read<ItemController>().userItemList.isEmpty
                  ? Center(
                      heightFactor: 17,
                      child: Text(
                        "Cart is empty",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  : Expanded(
                      child: Consumer<ItemController>(
                        builder: (context, itemcontroller, child) =>
                            ListView.builder(
                          itemCount: itemcontroller.userItemList.length,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image.asset(
                                      itemcontroller.userItemList[index].image),
                                  title: Text(
                                      itemcontroller.userItemList[index].name),
                                  trailing: IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          content: Text(
                                              "Remove this item to your cart?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);

                                                itemcontroller.removeItem(
                                                    itemcontroller
                                                        .userItemList[index]);
                                              },
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("No",
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Divider(),
                              ],
                            );
                          },
                        ),
                      ),
                    )
            ],
          ),
        ));
  }
}
