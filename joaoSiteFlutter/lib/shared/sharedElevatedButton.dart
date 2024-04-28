// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';

class SharedElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color? backgroundColor;
  final double? titleSized;

  const SharedElevatedButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.titleSized,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorPalette.regularGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(fontSize: titleSized ?? 15, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
