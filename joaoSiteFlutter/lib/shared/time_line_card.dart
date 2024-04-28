import 'package:flutter/material.dart';

class TimeLineCard extends StatelessWidget {
  final String title;
  final String position;
  final String date;

  const TimeLineCard(
      {super.key,
      required this.title,
      required this.position,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 20, color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          ClipRRect(
            child: Image.asset(
              position,
              height: 45,
              width: 45,
            ),
          ),
        ],
      ),
    );
  }
}
