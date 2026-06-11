import 'package:bookly_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: S.of(context).search_placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.red),
        ),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
