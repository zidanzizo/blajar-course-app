import 'package:blajar_course_app/presentation/widgets/home_new_coming_item.dart';
import 'package:blajar_course_app/presentation/widgets/home_popular_teacher_item.dart';
import 'package:blajar_course_app/presentation/widgets/home_topic_item.dart';
import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          profileSection(),
          searchSection(),
          continueLearningSection(),
          browseTopicSection(),
          newComingSection(),
          popularTeacherSection(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget popularTeacherSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              'Popular Teachers',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontFamily: semiBoldText,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                HomePopularTeacherItem(
                  imageUrl: 'assets/img_teacher1.png',
                  name: 'Bejo Urang',
                  desc: 'Manager',
                ),
                HomePopularTeacherItem(
                  imageUrl: 'assets/img_teacher2.png',
                  name: 'Nek Tua',
                  desc: 'Kids Voice Over',
                ),
                HomePopularTeacherItem(
                  imageUrl: 'assets/img_teacher3.png',
                  name: 'Sari Puji',
                  desc: 'UX Designer',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget browseTopicSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              'Browse Topics',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontFamily: semiBoldText,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                HomeTopicItem(
                  iconUrl: 'assets/icon_design.png',
                  title: 'Design',
                  isSelected: true,
                ),
                HomeTopicItem(
                  iconUrl: 'assets/icon_sport.png',
                  title: 'Sport',
                ),
                HomeTopicItem(
                  iconUrl: 'assets/icon_coding.png',
                  title: 'Coding',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget newComingSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              'New Coming',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontFamily: semiBoldText,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                HomeNewComingItem(
                  imageUrl: 'assets/img_course1.png',
                  title: 'Full-Stack Mobile App Developer',
                  rating: '4',
                  category: 'Coding',
                ),
                HomeNewComingItem(
                  imageUrl: 'assets/img_course2.png',
                  title: 'Analyze UX for Digital Marketing',
                  rating: '4',
                  category: 'Data Science',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget continueLearningSection() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Continue Learning',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontFamily: semiBoldText,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            height: 164,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: backgroundColor,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mastering Figma Auto Layout',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'UI/UX Design',
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/img_course.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        minHeight: 12,
                        backgroundColor: greyColor,
                        valueColor: AlwaysStoppedAnimation(primaryColor),
                        value: 0.5,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '11/69',
                      style: whiteTextStyle.copyWith(
                        fontFamily: semiBoldText,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget searchSection() {
    return Container(
      height: 52,
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_search.png',
            width: 24,
            color: whiteColor,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                isDense: true,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search by skills or teacher',
                hintStyle: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileSection() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: Border.all(
                color: backgroundColor,
                width: 8,
              ),
            ),
            child: Image.asset(
              'assets/img_profile.png',
              fit: BoxFit.cover,
              width: 54,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'zizo',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontFamily: semiBoldText,
                  ),
                ),
                Text(
                  'The Dart Side',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontFamily: semiBoldText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
            ),
            child: Center(
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icon_notif.png',
                      width: 24,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: redColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
