import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeTopicItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final bool isSelected;
  const HomeTopicItem({
    super.key,
    required this.title,
    required this.iconUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isSelected ? primaryColor : backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconUrl,
            width: 24,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontFamily: semiBoldText,
            ),
          )
        ],
      ),
    );
  }
}
