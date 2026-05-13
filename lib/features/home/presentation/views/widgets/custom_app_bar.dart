import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
      child: Row(
        children: [
          Image.asset(AppAssets.logo, height: 25),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
