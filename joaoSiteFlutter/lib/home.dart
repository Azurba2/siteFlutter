import 'package:flutter/material.dart';
import 'package:joao_site_flutter/About/about_me.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:joao_site_flutter/Education/education.dart';
import 'package:joao_site_flutter/Experience/experience.dart';
import 'package:joao_site_flutter/Projects/projects.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int whichMobilePageToRender = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 910) {
          return _browserLayout(constraints.maxWidth);
        } else {
          return _mobileLayout();
        }
      },
    );
  }

  Widget _browserLayout(double maxWidth) {
    print(maxWidth);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBar(
          backgroundColor: ColorPalette.appBarDark,
          flexibleSpace: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.2,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/joao_piment_black_center.png'),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: ColorPalette.logoGreen,
            dividerColor: ColorPalette.logoGreen,
            indicatorColor: Colors.transparent,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  'About Me',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Tab(
                child: Text(
                  'Experience',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Tab(
                child: Text(
                  'Education',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Tab(
                child: Text(
                  'Projects',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildBodyBrowserLayout(false, maxWidth),
    );
  }

  Widget _mobileLayout() {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorPalette.appBarDark,
          iconTheme: const IconThemeData(color: Colors.white),
          title: SizedBox(
            height: 100,
            width: 250,
            child: Image.asset(
              Paths.logo,
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
                height: 105,
                child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: ColorPalette.appBarDark,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ))),
            ListTile(
              title: const Text(
                'About Me',
                style: TextStyle(color: ColorPalette.regularGreen),
              ),
              onTap: () {
                setState(() {
                  whichMobilePageToRender = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Experience',
                  style: TextStyle(color: ColorPalette.regularGreen)),
              onTap: () {
                setState(() {
                  whichMobilePageToRender = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Education',
                  style: TextStyle(color: ColorPalette.regularGreen)),
              onTap: () {
                setState(() {
                  whichMobilePageToRender = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Projects',
                  style: TextStyle(color: ColorPalette.regularGreen)),
              onTap: () {
                setState(() {
                  whichMobilePageToRender = 4;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _buildBodyMobileLayout(true),
    );
  }

  Widget _buildBodyBrowserLayout(bool isMobile, double maxWidth) {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              AboutMe(
                isMobile: isMobile,
              ),
              Experience(isMobile: false, maxWidth: maxWidth),
              const Education(isMobile: false),
              Projects(
                isMobile: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBodyMobileLayout(bool isMobile) {
    Widget page;
    switch (whichMobilePageToRender) {
      case 1:
        page = const AboutMe(isMobile: true);
        break;
      case 2:
        page = page = Experience(isMobile: true);
        break;
      case 3:
        page = page = const Education(isMobile: true);
        break;
      case 4:
        page = page = Projects(isMobile: true);
        break;
      default:
        page = const AboutMe(isMobile: true);
        break;
    }
    return page;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
