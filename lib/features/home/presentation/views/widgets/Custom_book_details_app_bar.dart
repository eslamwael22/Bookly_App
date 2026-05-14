import 'package:flutter/material.dart';

class CustomDetailsBookAppBar extends StatelessWidget {
  const CustomDetailsBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
