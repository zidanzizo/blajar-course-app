import 'dart:ui';

import 'package:blajar_course_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPlayVideoItem extends StatelessWidget {
  final String imageUrl;
  const DetailPlayVideoItem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 310,
      margin: const EdgeInsets.only(right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: backgroundColor,
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
      child: Center(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor.withOpacity(0.4),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_play.png',
                  width: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
