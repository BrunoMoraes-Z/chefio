import 'package:chefio/constants.dart';
import 'package:chefio/screens/home/widgets/category_tag.dart';
import 'package:chefio/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadowList,
      ),
      height: 254,
      child: Align(
        alignment: Alignment.topLeft,
        child: Stack(
          children: [
            const SearchBar(),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 140),
              height: 91,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: mainTextColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        CategoryTag(
                          text: 'All',
                          isSelected: true,
                          onTap: () {},
                        ),
                        CategoryTag(
                          text: 'Food',
                          isSelected: false,
                          onTap: () {},
                        ),
                        CategoryTag(
                          text: 'Drink',
                          isSelected: false,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
