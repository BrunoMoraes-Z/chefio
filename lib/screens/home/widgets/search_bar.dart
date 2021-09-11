import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 24, right: 24),
      height: 56,
      decoration: BoxDecoration(
        color: formTextColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: TextField(
          cursorColor: primaryColor,
          decoration: InputDecoration(
            hintText: 'Search',
            fillColor: formTextColor,
            prefixIcon: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/icons/search.png'),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
