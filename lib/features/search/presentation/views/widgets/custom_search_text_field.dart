import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.onSubmitted});

  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: Icon(CupertinoIcons.search, color: Colors.white.withOpacity(0.6),),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
