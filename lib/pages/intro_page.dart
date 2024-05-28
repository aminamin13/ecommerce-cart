import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo

            Icon(Icons.shopping_bag,
                size: 100, color: Theme.of(context).colorScheme.inversePrimary),
            const SizedBox(height: 50),
            // Title
            const Text(
              "MINIMAL SHOP",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 5),
            ),
            const SizedBox(height: 20),

            //subtitle
            Text("Made With Flutter 🤍",
                style: TextStyle(fontSize: 15, color: Colors.grey.shade500)),
            const SizedBox(height: 25),

            // button
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "shop_page");
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary),
                child: const Icon(
                  Icons.arrow_forward,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
