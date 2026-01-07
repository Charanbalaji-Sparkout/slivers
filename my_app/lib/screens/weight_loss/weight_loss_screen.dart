import 'package:flutter/material.dart';
import 'package:my_app/screens/home/widgets/hero_widget.dart';

class WeightLossScreen extends StatelessWidget {
  final String label;
  final String imageUrl;
  
  const WeightLossScreen({super.key, required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeroWidget(tag: label, imageUrl: imageUrl),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Welcome to $label!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
