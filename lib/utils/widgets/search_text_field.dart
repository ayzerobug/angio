import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, this.caption = "Search..."})
      : super(key: key);
  final String caption;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        prefixIcon: const Icon(Icons.search_outlined),
        hintText: caption,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 239, 239, 239),
        // contentPadding: EdgeInsets.zero,
      ),
      style: const TextStyle(
        fontSize: 14,
      ),
    );
  }
}
