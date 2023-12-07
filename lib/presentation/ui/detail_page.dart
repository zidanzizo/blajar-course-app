import 'package:blajar_course_app/presentation/widgets/detail_course_list_item.dart';
import 'package:blajar_course_app/presentation/widgets/detail_menu_item.dart';
import 'package:blajar_course_app/presentation/widgets/detail_play_video_item.dart';
import 'package:blajar_course_app/presentation/widgets/detail_section_item.dart';
import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        leadingWidth: 80,
        leading: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 55,
            height: 55,
            margin: const EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
            ),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
                color: whiteColor,
              ),
            ),
          ),
        ),
        title: const Text('Course Details'),
        actions: [
          Container(
            width: 55,
            height: 55,
            margin: const EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
            ),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Image.asset(
                'assets/icon_more.png',
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          playVideoImageSection(),
          titleSection(),
          ratingSection(),
          menuSection(),
          courseListSection(),
        ],
      ),
    );
  }

  Widget courseListSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailSectionItem(
            title: 'Section 1 - Warming Up',
            courseListItems: [
              DetailCourseListItem(
                title: 'Installation Tools',
                number: '1',
                isDone: true,
              ),
              DetailCourseListItem(
                title: 'Introduction',
                number: '2',
                isDone: true,
              ),
              DetailCourseListItem(
                title: 'Download Assets',
                number: '3',
                isDone: true,
              ),
              DetailCourseListItem(
                title: 'Install Plugins',
                number: '4',
              ),
              DetailCourseListItem(
                title: 'Summary',
                number: '5',
              ),
            ],
          ),
          DetailSectionItem(
            title: 'Section 2 - Deep Work',
            courseListItems: [
              DetailCourseListItem(
                title: 'New Project',
                number: '1',
              ),
              DetailCourseListItem(
                title: 'Wireframe to Visual',
                number: '2',
              ),
              DetailCourseListItem(
                title: 'Prototyping',
                number: '3',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget menuSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            DetailMenuItem(
              title: 'Lesson',
              isSelected: true,
            ),
            DetailMenuItem(
              title: 'About',
            ),
            DetailMenuItem(
              title: 'Discussion',
            ),
            DetailMenuItem(
              title: 'Reviews',
            ),
          ],
        ),
      ),
    );
  }

  Widget ratingSection() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Row(children: [
            ...List.generate(
              5,
              (index) => ratingItem(index, 4),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '4/5 • (11,390)',
              style: whiteTextStyle.copyWith(
                fontFamily: semiBoldText,
              ),
            ),
          ])
        ],
      ),
    );
  }

  Widget ratingItem(int index, int rating) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      child: Image.asset(
        'assets/icon_star.png',
        width: 24,
        color: index < rating ? orangeColor : greyColor,
      ),
    );
  }

  Container titleSection() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Design Thinking: Improve Startups Better 100x',
        style: whiteTextStyle.copyWith(
          fontSize: 24,
          fontWeight: bold,
        ),
      ),
    );
  }

  Widget playVideoImageSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 18),
        child: const Row(
          children: [
            SizedBox(
              width: 24,
            ),
            DetailPlayVideoItem(
              imageUrl: 'assets/img_detail1.png',
            ),
            DetailPlayVideoItem(
              imageUrl: 'assets/img_detail2.png',
            ),
          ],
        ),
      ),
    );
  }
}
