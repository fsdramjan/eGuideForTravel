import 'package:flutter/material.dart';

Widget searchBar() {
    return Container(
      height: 38,
      width: 260,
      child: TextField(
        // readOnly: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }