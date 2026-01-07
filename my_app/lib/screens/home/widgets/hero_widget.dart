import 'package:flutter/material.dart';
class HeroWidget extends StatelessWidget {
  final String tag;
  final String imageUrl;
  final double? radius;
  final double? height;

  const HeroWidget({
    super.key,
    required this.tag,
    required this.imageUrl,
    this.radius,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: radius != null 
        ? CircleAvatar(  
            radius: radius!,
            backgroundImage: NetworkImage(imageUrl),
          )
        : Container(  
            height: height ?? 360,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
    );
  }
}
