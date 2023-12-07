import 'package:blajar_course_app/presentation/ui/main_page.dart';
import 'package:blajar_course_app/presentation/ui/splash_page.dart';
import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: bodyBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: bodyBackgroundColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
