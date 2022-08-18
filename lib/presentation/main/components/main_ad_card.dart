import 'package:flutter/material.dart';

class MainAdCard extends StatelessWidget {
  final String title;
  final String content;

  MainAdCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
