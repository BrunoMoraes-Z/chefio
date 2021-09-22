import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class NotificationLine extends StatelessWidget {
  const NotificationLine({
    Key? key,
    required this.personName,
    required this.personImage,
    required this.time,
    this.like = false,
    this.following = false,
    this.recipeImage = '',
  }) : super(key: key);

  final String personName;
  final String personImage;
  final double time;
  final bool like, following;
  final String recipeImage;

  String _parseTime() {
    var result = '';
    var splitted = time.toStringAsFixed(2).split('.');
    var hour = int.parse(splitted[0]);
    var min = int.parse(splitted[1]);
    if (time > 0.9) {
      if (hour > 23) {
        result = '${hour ~/ 24} day(s)';
      } else {
        if (min > 0) {
          result = '$hour h $min min';
        } else {
          result = '$hour h';
        }
      }
    } else {
      result = '$min min';
    }
    return result.length > 11 ? '' : ' ・ $result';
  }

  @override
  Widget build(BuildContext context) {
    _parseTime();
    Widget item = like
        ? Container(
            height: 64,
            width: 64,
            decoration: recipeImage.isNotEmpty
                ? BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(recipeImage),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                : const BoxDecoration(),
          )
        : InkWell(
            onTap: following ? null : () {},
            borderRadius: BorderRadius.circular(32),
            child: Container(
              height: 39,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: following ? outlineTextColor : primaryColor,
                borderRadius: BorderRadius.circular(32),
                boxShadow: shadowList,
              ),
              child: Center(
                child: Text(
                  following ? 'Followed' : 'Follow',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: following ? mainTextColor : Colors.white,
                  ),
                ),
              ),
            ),
          );

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(personImage),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    personName,
                    style: const TextStyle(
                      color: mainTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    like
                        ? 'liked your recipe${_parseTime()}'
                        : 'now following you${_parseTime()}',
                    style: const TextStyle(
                      color: secondaryTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          item
        ],
      ),
    );
  }
}
