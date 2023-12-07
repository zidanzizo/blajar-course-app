import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailMenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const DetailMenuItem({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: 97,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isSelected ? primaryColor : backgroundColor,
      ),
      child: Center(
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontFamily: semiBoldText,
          ),
        ),
      ),
    );
  }
}
