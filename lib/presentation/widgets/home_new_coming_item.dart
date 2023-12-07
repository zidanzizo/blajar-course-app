import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class HomeNewComingItem extends StatelessWidget {
  final String title;
  final String rating;
  final String imageUrl;
  final String category;
  const HomeNewComingItem({
    super.key,
    required this.title,
    required this.rating,
    required this.imageUrl,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 269,
      width: 230,
      margin: const EdgeInsets.only(right: 18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icon_star.png',
                        width: 20,
                        color: orangeColor,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '$rating/5',
                        style: whiteTextStyle.copyWith(
                          fontFamily: semiBoldText,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    category,
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
