import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePopularTeacherItem extends StatelessWidget {
  final String name;
  final String desc;
  final String imageUrl;
  const HomePopularTeacherItem({
    super.key,
    required this.name,
    required this.desc,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      width: 155,
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 70,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontFamily: semiBoldText,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            desc,
            style: greyTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
