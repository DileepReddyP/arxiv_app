import 'package:flutter/material.dart';

class Constants {
  static const svgWidth = 30.0;
  static final textFieldDecor = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    errorStyle: const TextStyle(color: Colors.white),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(5),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(5),
    ),
    hintText: 'Search Query',
    prefix: const SizedBox(
      width: 10,
    ),
    // l: TextDirection.rtl,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  );
  static const dropdownDecor = InputDecoration(
    border: OutlineInputBorder(borderSide: BorderSide.none),
    fillColor: Colors.white,
    filled: true,
  );
}

enum SidebarScreenState {
  search,
  categories,
  settings,
}
