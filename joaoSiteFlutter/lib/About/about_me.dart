import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:joao_site_flutter/About/tech_stack_container.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';
import 'package:joao_site_flutter/consts/text.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  ScreenSizeEnum platform;

  AboutMe({super.key, required this.platform});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool isButtonClicked = false;

  @override
  void initState() {
    super.initState();
  }

  final List<Map<String, dynamic>> techStackDataBrowser = [
    {
      "text": ".NET",
      "logoPath": "assets/images/net.png",
      "height": 35.0,
      "width": 35.0,
    },
    {
      "text": "C#",
      "logoPath": "assets/images/C#.png",
      "height": 35.0,
      "width": 35.0,
    },
    {
      "text": "Dart",
      "logoPath": "assets/images/Dart_logo.png",
      "height": 35.0,
      "width": 35.0,
    },
    {
      "text": "Flutter",
      "logoPath": "assets/images/flutter-icon.webp",
      "height": 35.0,
      "width": 30.0,
    },
    {
      "text": "Angular",
      "logoPath": "assets/images/angular-logo.png",
      "height": 35.0,
      "width": 35.0,
    },
    {
      "text": "SQL",
      "logoPath": "assets/images/SQL.png",
      "height": 50.0,
      "width": 65.0,
    },
    {
      "text": "Postman",
      "logoPath": "assets/images/postman.png",
      "height": 35.0,
      "width": 35.0,
    },
  ];

  final List<Map<String, dynamic>> techStackDataMobile = [
    {
      "text": ".NET",
      "logoPath": "assets/images/net.png",
      "height": 25.0,
      "width": 25.0,
    },
    {
      "text": "C#",
      "logoPath": "assets/images/C#.png",
      "height": 25.0,
      "width": 25.0,
    },
    {
      "text": "Dart",
      "logoPath": "assets/images/Dart_logo.png",
      "height": 25.0,
      "width": 25.0,
    },
    {
      "text": "Flutter",
      "logoPath": "assets/images/flutter-icon.webp",
      "height": 25.0,
      "width": 20.0,
    },
    {
      "text": "Angular",
      "logoPath": "assets/images/angular-logo.png",
      "height": 25.0,
      "width": 25.0,
    },
    {
      "text": "SQL",
      "logoPath": "assets/images/SQL.png",
      "height": 40.0,
      "width": 55.0,
    },
    {
      "text": "Postman",
      "logoPath": "assets/images/postman.png",
      "height": 25.0,
      "width": 25.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          widget.platform == ScreenSizeEnum.browser
              ? aboutMeBrowser(context, techStackDataBrowser)
              : aboutMeMobile(context, techStackDataMobile)
        ],
      ),
    );
  }

  Widget aboutMeBrowser(
      BuildContext context, List<Map<String, dynamic>> techStackData) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80, 100, 100, 40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.asset(Paths.fotocurriculo,
                              width: 400, height: 400, fit: BoxFit.fill),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () => _launchURL(
                              'https://www.linkedin.com/in/joao-giudice',
                              context),
                          child: ClipRRect(
                            child: Image.asset(Paths.linkedin,
                                width: 45, height: 45, fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                "I am a Full Stack developer with a focus on Web and Mobile software development. My main stack is .NET and Flutter, but I have experience in several technologies and tools including React, Angular, C#, SQL, Azure, Docker, and CI/CD. I am able to solve complex problems, review code and design efficient and scalable solutions. In addition, I focus on SOLID and TDD principles to ensure that the code is maintainable and of high quality.",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isButtonClicked = !isButtonClicked;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.regularGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Column(
                            children: [
                              SizedBox(height: 12),
                              Text(
                                "PDF Resume",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        isButtonClicked
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      _launchURL(
                                          'https://1drv.ms/w/s!Aq_4EhaJUcWMj-tzlorOXjGy5ZyfBQ?e=Z9rfJm',
                                          context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: ColorPalette.regularGreen),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 5),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                              "assets/images/Flag_of_the_United_States.png"),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text(
                                          "English",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: ColorPalette.regularGreen),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  ElevatedButton(
                                    onPressed: () {
                                      _launchURL(
                                          "https://1drv.ms/w/s!Aq_4EhaJUcWMj-txtfOua4yplzo22g?e=xxGkPv",
                                          context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: ColorPalette.regularGreen),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 5),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                              "assets/images/Flag_of_Brazil.png"),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text(
                                          "Portuguese",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: ColorPalette.regularGreen),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 70),
              const Text(
                "Tech Stack",
                style: TextStyle(fontSize: 50, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Wrap(
                    spacing: 25,
                    runSpacing: 25,
                    children: techStackData.map((data) {
                      return TechStackContainer(
                          isMobile: false,
                          backgroundColor: data["color"],
                          text: data["text"]!,
                          logoPath: data["logoPath"]!,
                          logoHeight: data["height"],
                          logoWidth: data["width"]);
                    }).toList(),
                  ))
            ]),
      ),
    );
  }

  Future<void> _launchURL(String url, BuildContext context) async {
    Uri site = Uri.parse(url);
    if (await canLaunchUrl(site)) {
      await launchUrl(site);
    } else {
      if (mounted) {
        faultyLinkDialog(context);
      }
    }
  }

  Widget aboutMeMobile(
      BuildContext context, List<Map<String, dynamic>> techStackData) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 50, 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(Paths.fotocurriculo,
                        width: 170, height: 170, fit: BoxFit.fill),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(
                        'https://www.linkedin.com/in/joao-giudice', context),
                    child: ClipRRect(
                      child: Image.asset(Paths.linkedin,
                          width: 35, height: 30, fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          "I am a Full Stack developer with a focus on Web and Mobile software development. My main stack is .NET and Flutter, but I have experience in several technologies and tools including React, Angular, C#, SQL, Azure, Docker, and CI/CD. I am able to solve complex problems, review code and design efficient and scalable solutions. In addition, I focus on SOLID and TDD principles to ensure that the code is maintainable and of high quality.",
                          style: AppTextStyles.normalMobileBlack,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isButtonClicked = !isButtonClicked;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPalette.regularGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "PDF Resume",
                          style: AppTextStyles.normalMobileWhite,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  isButtonClicked
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                _launchURL(
                                    'https://1drv.ms/w/s!Aq_4EhaJUcWMj-tzlorOXjGy5ZyfBQ?e=Z9rfJm',
                                    context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      color: ColorPalette.regularGreen),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/images/Flag_of_the_United_States.png"),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "English",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: ColorPalette.regularGreen),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                                onPressed: () {
                                  _launchURL(
                                      "https://1drv.ms/w/s!Aq_4EhaJUcWMj-txtfOua4yplzo22g?e=xxGkPv",
                                      context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                        color: ColorPalette.regularGreen),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/images/Flag_of_Brazil.png"),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Portuguese",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: ColorPalette.regularGreen),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                )),
                          ],
                        )
                      : Container()
                ],
              ),
              const SizedBox(height: 30),
              const Divider(color: ColorPalette.regularGreen),
              const SizedBox(height: 20),
              const Text(
                "Tech Stack",
                style: AppTextStyles.titleMobileBlack,
                textAlign: TextAlign.justify,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: techStackData.map((data) {
                      return TechStackContainer(
                          isMobile: true,
                          backgroundColor: data["color"],
                          text: data["text"]!,
                          logoPath: data["logoPath"]!,
                          logoHeight: data["height"],
                          logoWidth: data["width"]);
                    }).toList(),
                  ))
            ]),
      ),
    );
  }

  Future<void> faultyLinkDialog(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Center(
          child: Icon(Icons.error, size: 40, color: Colors.white),
        ),
        content: const Text(
            "It seems there was a problem opening this link. Please try again later",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('Close',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ],
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
