import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:joao_site_flutter/consts/text.dart';

class TechStackContainer extends StatelessWidget {
  final Color? backgroundColor;
  final String? text;
  final String? logoPath;
  final double? logoHeight;
  final double? logoWidth;
  final bool isMobile;

  const TechStackContainer({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.logoPath,
    required this.logoHeight,
    required this.logoWidth,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          isMobile ? techStackContainerMobile() : techStackContainerBrowser(),
    );
  }

  Widget techStackContainerBrowser() {
    return Container(
      height: 60,
      width: 200,
      color: ColorPalette.appBarDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(logoPath!, width: logoWidth, height: logoHeight),
          ),
          const SizedBox(width: 20),
          Text(
            text!,
            style: const TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget techStackContainerMobile() {
    return Container(
      height: 40,
      width: 130,
      color: ColorPalette.appBarDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(logoPath!, width: logoWidth, height: logoHeight),
          ),
          const SizedBox(width: 20),
          Text(
            text!,
            style: AppTextStyles.smallMobileWhite,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
