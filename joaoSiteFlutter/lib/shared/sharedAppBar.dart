import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';

// Your custom SharedAppBar widget
class SharedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SharedAppBar({super.key});

  @override
  State<SharedAppBar> createState() => _SharedAppBarState();

  // Override preferredSize to specify the size of the app bar
  @override
  Size get preferredSize =>
      const Size.fromHeight(179); // Adjust the height as needed
}

class _SharedAppBarState extends State<SharedAppBar> {
  String _selectedButton = "About me";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorPalette.appBarDark,
      flexibleSpace: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.start,
          spacing: 16.0,
          runSpacing: 16.0,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "About me";
                });
              },
              child: Text(
                "About me",
                style: TextStyle(
                  fontSize: 30,
                  color: _selectedButton == "About me"
                      ? ColorPalette.logoGreen
                      : Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Experience";
                });
              },
              child: Text(
                "Experience",
                style: TextStyle(
                  fontSize: 30,
                  color: _selectedButton == "Experience"
                      ? ColorPalette.logoGreen
                      : Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Education";
                });
              },
              child: Text(
                "Education",
                style: TextStyle(
                  fontSize: 30,
                  color: _selectedButton == "Education"
                      ? ColorPalette.logoGreen
                      : Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Projects";
                });
              },
              child: Text(
                "Projects",
                style: TextStyle(
                  fontSize: 30,
                  color: _selectedButton == "Projects"
                      ? ColorPalette.logoGreen
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
