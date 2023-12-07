import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 40),
                    height: 280,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/img_splash.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 44,
                  child: Container(
                    height: 44,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: backgroundColor,
                    ),
                    child: Center(
                      child: Text(
                        '👩‍💻 💼 🫰🏻',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: semiBoldText,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 80,
                  child: Container(
                    height: 56,
                    width: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: backgroundColor,
                    ),
                    child: Center(
                      child: Text(
                        'Great\nTeachers',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: RichText(
                text: TextSpan(
                  text: 'Learn.',
                  style: whiteTextStyle.copyWith(
                    fontFamily: blackText,
                    fontSize: 66,
                    height: 0.9,
                  ),
                  children: [
                    TextSpan(
                      text: '\nPractice.',
                      style: purpleTextStyle.copyWith(
                        fontFamily: blackText,
                        fontSize: 66,
                      ),
                    ),
                    TextSpan(
                      text: '\nEarn.',
                      style: whiteTextStyle.copyWith(
                        fontFamily: blackText,
                        fontSize: 66,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'New way to study abroad from the\nreal professional with great work.',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                height: 2,
              ),
            ),
            Container(
              height: 52,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 40,
                bottom: 25,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/main', (route) => false);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      )),
                  child: Text(
                    'Create New Account',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontFamily: semiBoldText,
                    ),
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign In to My Account',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
