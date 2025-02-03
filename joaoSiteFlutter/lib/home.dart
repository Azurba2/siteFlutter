import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:joao_site_flutter/About/about_me.dart';
import 'package:joao_site_flutter/Articles/articles.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:joao_site_flutter/Education/education.dart';
import 'package:joao_site_flutter/Experience/experience.dart';
import 'package:joao_site_flutter/Projects/projects.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  ScreenSizeEnum platform = ScreenSizeEnum.browser;
  int whichMobilePageToRender = 1;
  String _selectedButton = "About me";
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          platform = ScreenSizeEnum.browser;
        } else if (constraints.maxWidth >= 600 &&
            constraints.maxWidth <= 1199) {
          platform = ScreenSizeEnum.tablet;
        } else {
          platform = ScreenSizeEnum.mobile;
        }
        return _app(platform, constraints.maxWidth);
      },
    );
  }

  Widget _app(ScreenSizeEnum platform, double screenSize) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(230),
          child: AppBar(
              backgroundColor: ColorPalette.appBarDark,
              flexibleSpace:
                  screenSize > 1220 ? withLogoStructure() : noLogoStructure()),
        ),
        body: Builder(
          builder: (context) {
            switch (_selectedButton) {
              case "Experience":
                return Experience(platform: platform);
              case "Projects":
                return Projects(platform: platform);
              case "Education":
                return Education(platform: platform);
              case "Articles":
                return Articles(platform: platform);
              default:
                return AboutMe(platform: platform);
            }
          },
        ));
  }

  Widget withLogoStructure() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: [
        Row(
          children: [
            SizedBox(
                width: 350,
                child:
                    Image.asset("assets/images/joao_piment_black_center.png")),
          ],
        ),
        const Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [noLogoStructure()],
        ),
      ]),
    );
  }

  Widget noLogoStructure() {
    return Center(
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
          TextButton(
            onPressed: () {
              setState(() {
                _selectedButton = "Articles";
              });
            },
            child: Text(
              "Articles",
              style: TextStyle(
                fontSize: 30,
                color: _selectedButton == "Articles"
                    ? ColorPalette.logoGreen
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
