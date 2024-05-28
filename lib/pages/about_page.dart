import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              "This is a simple ecommerce app built with flutterThis is a simple ecommerce app built with flutterThis is a simple ecommerce app built with flutterThis is a simple ecommerce app built with flutterThis is a simple ecommerce app built with flutter",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
