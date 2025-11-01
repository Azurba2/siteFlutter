// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';
import 'package:joao_site_flutter/dto/experience_skill_dto.dart';
import 'package:joao_site_flutter/shared/time_line_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class SharedCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? logo;
  final String summary;
  final double height;
  final double width;
  final List<ExperienceSkillDto>? skills;
  final String? date;
  final String? button;
  final List<String>? buttonTitleList;
  final List<Function>? buttonOnPressedList;
  final String? image;
  final String? position;
  final String? location;
  final Function()? onPressed;
  final String? award;
  final bool? store;
  final bool? kiosk;
  final List<TimeLineTile>? timeLine;

  const SharedCard({
    Key? key,
    required this.title,
    required this.summary,
    required this.height,
    required this.width,
    this.subtitle,
    this.logo,
    this.timeLine,
    this.skills,
    this.date,
    this.button,
    this.buttonTitleList,
    this.buttonOnPressedList,
    this.image,
    this.position,
    this.location,
    this.onPressed,
    this.award,
    this.store,
    this.kiosk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: ColorPalette.regularGreen),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (image != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        image!,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                        color: ColorPalette.regularGreen,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (subtitle != null) ...[
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                    if (logo != null) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              logo!,
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 10),
                    if (timeLine != null) ...[...timeLine!],
                    if (location != null) ...[
                      Text(
                        location!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      )
                    ],
                    if (position != null) ...[
                      const SizedBox(height: 10),
                      Text(
                        position!,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                    const SizedBox(height: 10),
                    Text(
                      summary,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    if (skills != null)
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 20,
                        children: skills!
                            .map((skill) => Column(
                                  children: [
                                    _skillsContainer(
                                      skill.path!,
                                      skill.name!,
                                      skill.size,
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                ))
                            .toList(),
                      ),
                    if (store != null && kiosk != null)
                      Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 20,
                          children: [_storeContainer(kiosk!)]),
                    if (date != null) ...[
                      const SizedBox(height: 15),
                      Text(
                        date!,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                    if (button != null) ...[
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.regularGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          child: Text(
                            button!,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                    if (buttonTitleList != null &&
                        buttonTitleList!.isNotEmpty &&
                        buttonOnPressedList != null &&
                        buttonOnPressedList!.length ==
                            buttonTitleList!.length) ...[
                      ...List.generate(buttonTitleList!.length, (index) {
                        final String buttonTitle = buttonTitleList![index];
                        final Function onPressed = buttonOnPressedList![index];

                        return ElevatedButton(
                          onPressed: () => onPressed(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.regularGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 20,
                            ),
                            child: Text(
                              buttonTitle,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        );
                      }),
                    ],
                    if (award != null) ...[
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Awards",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              "assets/images/medal.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text("Dean's List - Feb 2022"),
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              "assets/images/medal.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text("Dean's List - Aug 2022"),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _skillsContainer(String imagePath, String text, double? size) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          imagePath,
          height: size ?? 30,
          width: size ?? 30,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: const TextStyle(fontSize: 15, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _storeContainer(bool kiosk) {
  return Column(children: [
    kiosk == false
        ? Column(
            children: [
              Text(
                "RJ Digital",
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final url = Uri.parse(
                            'https://play.google.com/store/apps/details?id=br.gov.rj.proderj.rjdigital');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          Paths.googlePlay,
                          width: 150,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final url = Uri.parse(
                            "https://apps.apple.com/app/rj-digital/id1585703556");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SvgPicture.asset(
                            Paths.appStore,
                          )),
                    ),
                  ]),
              Text(
                "Poupatempo Paraná",
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final url = Uri.parse(
                            'https://play.google.com/store/apps/details?id=br.gov.pr.poupatempo');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          Paths.googlePlay,
                          width: 150,
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () async {
                    //     final url = Uri.parse(
                    //         "https://apps.apple.com/app/rj-digital/id1585703556");
                    //     if (await canLaunchUrl(url)) {
                    //       await launchUrl(url);
                    //     } else {
                    //       print('Could not launch $url');
                    //     }
                    //   },
                    //   child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(5),
                    //       child: SvgPicture.asset(
                    //         Paths.appStore,
                    //       )),
                    // ),
                  ]),
            ],
          )
        : Container(),
    // kiosk
    //     ? Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           ClipRRect(
    //               borderRadius: BorderRadius.circular(5),
    //               child: SizedBox(
    //                   height: 45,
    //                   width: 140,
    //                   child: Image.asset(Paths.microsoftStore))),
    //         ],
    //       )
    //     : Container()
  ]);
}
