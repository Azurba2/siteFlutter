import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';
import 'package:joao_site_flutter/dto/experience_skill_dto.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';
import 'package:joao_site_flutter/shared/sharedCard.dart';
import 'package:joao_site_flutter/shared/time_line_card.dart';
import 'package:joao_site_flutter/shared/time_line_tile.dart';

class Experience extends StatelessWidget {
  final ScreenSizeEnum platform;
  Experience({super.key, required this.platform});

  final List<ExperienceSkillDto> diletta = [
    ExperienceSkillDto(
        path: "assets/images/flutter-icon.webp", name: "Flutter"),
    ExperienceSkillDto(path: "assets/images/Dart_logo.png", name: "Dart"),
    ExperienceSkillDto(path: "assets/images/postman.png", name: "Postman"),
    ExperienceSkillDto(
        path: "assets/images/googleCloud.png", name: "Google Cloud"),
    ExperienceSkillDto(path: "assets/images/firebase.png", name: "Firebase"),
  ];
  final List<ExperienceSkillDto> antra = [
    ExperienceSkillDto(path: "assets/images/angular-logo.png", name: "Angular"),
    ExperienceSkillDto(path: "assets/images/net.png", name: ".NET"),
    ExperienceSkillDto(path: "assets/images/C#.png", name: "C#"),
    ExperienceSkillDto(path: "assets/images/SQL.png", name: "SQL"),
    ExperienceSkillDto(path: "assets/images/postman.png", name: "Postman"),
  ];
  final List<ExperienceSkillDto> csu = [
    ExperienceSkillDto(
        path: "assets/images/leader.jpg", name: "Leadership", size: 50),
    ExperienceSkillDto(
        path: "assets/images/communication.png",
        name: "Communication",
        size: 50),
  ];
  final List<ExperienceSkillDto> diletaIntern = [
    ExperienceSkillDto(
        path: "assets/images/flutter-icon.webp", name: "flutter"),
    ExperienceSkillDto(path: "assets/images/Dart_logo.png", name: "Dart"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            // platform == ScreenSizeEnum.browser
            //     ? Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           TimeLineTile(
            //             isFirst: true,
            //             isLast: false,
            //             isPast: true,
            //             child: const TimeLineCard(
            //               title: "Diletta Solutions",
            //               position: "assets/images/diletta.jpg",
            //               date: "Summer 2019",
            //             ),
            //           ),
            //           TimeLineTile(
            //             isFirst: false,
            //             isLast: false,
            //             isPast: true,
            //             child: const TimeLineCard(
            //               title: "Colorado State University",
            //               position: "assets/images/csu.png",
            //               date: "Jan 2019 - Dez 2022",
            //             ),
            //           ),
            //           TimeLineTile(
            //             isFirst: false,
            //             isLast: false,
            //             isPast: true,
            //             child: const TimeLineCard(
            //               title: "Antra Inc",
            //               position: "assets/images/antra.JPG",
            //               date: "Jan 2023 - Oct 2023",
            //             ),
            //           ),
            //           TimeLineTile(
            //             isFirst: false,
            //             isLast: true,
            //             isPast: false,
            //             child: const TimeLineCard(
            //               title: "Diletta Solutions",
            //               position: "assets/images/diletta.jpg",
            //               date: "Oct 2023 - Current",
            //             ),
            //           ),
            //         ],
            //       )
            //     : Container(),
            Center(
              child: Wrap(
                children: [
                  SharedCard(
                    height: platform == ScreenSizeEnum.browser ? 590 : 630,
                    width: 400,
                    logo: Paths.diletta,
                    date: platform == ScreenSizeEnum.browser
                        ? ""
                        : "Oct 2023 - Current",
                    timeLine: platform == ScreenSizeEnum.browser
                        ? [
                            TimeLineTile(
                                isFirst: true,
                                isLast: false,
                                isPast: false,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mid-Level Software Developer",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Nov 2025 - Current"),
                                  ],
                                )),
                            TimeLineTile(
                                isFirst: false,
                                isLast: true,
                                isPast: true,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Junior Software Developer",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Oct 2023 - Nov 2025"),
                                  ],
                                )),
                          ]
                        : null,
                    title: "Diletta Solutions",
                    position: platform == ScreenSizeEnum.browser
                        ? null
                        : "Mid-Level Mobile Developer",
                    summary:
                        "I work as a Flutter software developer in an agile team using Bitbucket and Jira for efficient collaboration and development. My focus is to craft responsive, dynamic and efficient mobile applications.",
                    skills: diletta,
                  ),
                  SharedCard(
                    height: platform == ScreenSizeEnum.browser ? 590 : 630,
                    width: 400,
                    logo: Paths.antra,
                    date: platform == ScreenSizeEnum.browser
                        ? ""
                        : "Jan 2023 - Oct 2023",
                    title: "Antra Inc",
                    position: "Full Stack Software Developer",
                    summary:
                        "I was a Full Stack developer who worked in an agile work environment alongside a dynamic team of 10 developers. I have proactively immersed myself in practical learning experiences, gaining expertise in cutting-edge technologies such as .NET, Angular, React, Azure, and more.",
                    skills: antra,
                  ),
                  SharedCard(
                    height: platform == ScreenSizeEnum.browser ? 590 : 630,
                    width: 400,
                    logo: Paths.csu,
                    date: platform == ScreenSizeEnum.browser
                        ? ""
                        : "Jan 2019 - Dez 2022",
                    title: "Colorado State University",
                    position: "Student Supervisor",
                    summary:
                        "Worked on Colorado State University’s dining hall, Braiden Dining hall as a part time job. As a supervisor I was responsible for training new employees and act as a shift supervisor for a crew of up to 25 members. The dining hall served between 700–1500 customer and students daily.",
                    skills: csu,
                  ),
                  SharedCard(
                    height: platform == ScreenSizeEnum.browser ? 590 : 630,
                    width: 400,
                    logo: Paths.diletta,
                    date: platform == ScreenSizeEnum.browser
                        ? ""
                        : "Jun 2019 - Aug 2019",
                    title: "Diletta Solutions",
                    position: "Software Developer Intern",
                    summary:
                        "As a summer intern, I was cooperating in the development of the front-end of a medical application, providing healthcare professionals with a comprehensive solution for monitoring and analyzing patient information. The application generates prescriptions and forms related with Cannabidiol drugs, leading to potential results, with greater efficiency in clinical workflows",
                    skills: diletaIntern,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
