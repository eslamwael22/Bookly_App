import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 270,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
