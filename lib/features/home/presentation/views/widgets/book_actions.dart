import 'package:bookly_app/core/custom_bottom.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 40),
      child: const Row(
        children: [
          CustomBottom(
            text: '19.99 \$',
            BackgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 20,
            fontweight: FontWeight.bold,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomBottom(
            text: 'Free Preview',
            BackgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            fontSize: 20,
            fontweight: FontWeight.bold,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
