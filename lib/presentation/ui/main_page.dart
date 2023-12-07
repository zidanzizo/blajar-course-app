import 'package:blajar_course_app/presentation/ui/home_page.dart';
import 'package:blajar_course_app/presentation/widgets/bottom_navbar_item.dart';
import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 76,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottonNavbarItem(
              title: 'Progress',
              iconUrl: 'assets/icon_progress.png',
              isSelected: true,
            ),
            BottonNavbarItem(
              title: 'Library',
              iconUrl: 'assets/icon_library.png',
            ),
            BottonNavbarItem(
              title: 'Groups',
              iconUrl: 'assets/icon_group.png',
            ),
            BottonNavbarItem(
              title: 'Settings',
              iconUrl: 'assets/icon_setting.png',
            ),
          ],
        ),
      ),
    );
  }
}
