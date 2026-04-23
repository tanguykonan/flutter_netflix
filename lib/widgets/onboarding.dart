import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;

  const Onboarding({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.8)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}