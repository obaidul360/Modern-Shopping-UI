

import 'package:flutter/material.dart';
class SearchFieldScreen extends StatelessWidget {
  const SearchFieldScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.tune_sharp),
        hintText: "Search Notes..",
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
