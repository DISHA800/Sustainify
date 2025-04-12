import 'package:flutter/material.dart';
class AchievementImagePage extends StatelessWidget {
  final List<String> images = [
    'assets/achievement1.jpg', // Example image paths
    'assets/achievement2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Achievements')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(images[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
