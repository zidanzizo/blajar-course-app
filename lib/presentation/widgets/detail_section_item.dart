import 'package:blajar_course_app/presentation/widgets/detail_course_list_item.dart';
import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailSectionItem extends StatelessWidget {
  final List<DetailCourseListItem> courseListItems;
  final String title;
  const DetailSectionItem({
    super.key,
    required this.courseListItems,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontFamily: semiBoldText,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Column(
            children: courseListItems,
          ),
        ],
      ),
    );
  }
}
