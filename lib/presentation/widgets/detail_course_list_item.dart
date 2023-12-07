import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailCourseListItem extends StatelessWidget {
  final String title;
  final String number;
  final bool isDone;
  const DetailCourseListItem({
    super.key,
    required this.title,
    this.isDone = false,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greyColor,
            ),
            child: Center(
              child: Text(
                number,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontFamily: semiBoldText,
              ),
            ),
          ),
          isDone
              ? Icon(
                  Icons.check_circle_outline,
                  color: greenColor,
                )
              : Image.asset(
                  'assets/icon_lock.png',
                  width: 24,
                ),
        ],
      ),
    );
  }
}
