import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class BottonNavbarItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final bool isSelected;
  const BottonNavbarItem({
    super.key,
    required this.title,
    required this.iconUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconUrl,
          width: 24,
          color: isSelected ? whiteColor : greyColor,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 12,
            color: isSelected ? whiteColor : greyColor,
            fontFamily: semiBoldText,
          ),
        )
      ],
    );
  }
}
