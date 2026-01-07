import 'package:flutter/material.dart';
import 'hero_widget.dart';

class HomeScreenFeatureWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String imageUrl;
  final VoidCallback onTap;

  const HomeScreenFeatureWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/736x/ea/7c/1a/ea7c1a8e3e1a99a1c5397124c86d769c.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  HeroWidget(tag: label, imageUrl: imageUrl, radius: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(icon, size: 26),
                        SizedBox(width: 5),
                        Text(
                          label,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
