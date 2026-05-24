import 'package:flutter/material.dart';

class Book_Rating extends StatelessWidget {
  const Book_Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Free',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 80),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(width: 5),
            Text(
              '4.5',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
