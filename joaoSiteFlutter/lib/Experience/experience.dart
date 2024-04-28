import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/text.dart';
import 'package:joao_site_flutter/dto/experience_skill_dto.dart';
import 'package:joao_site_flutter/shared/sharedCard.dart';
import 'package:joao_site_flutter/shared/time_line_card.dart';
import 'package:joao_site_flutter/shared/time_line_tile.dart';

class Experience extends StatelessWidget {
  final bool isMobile;
  final double? maxWidth;
  Experience({super.key, required this.isMobile, this.maxWidth});

  final List<ExperienceSkillDto> diletta = [
    ExperienceSkillDto(
        path: "assets/images/flutter-icon.webp", name: "Flutter"),
    ExperienceSkillDto(path: "assets/images/Dart_logo.png", name: "Dart"),
    ExperienceSkillDto(path: "assets/images/postman.png", name: "Postman"),
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
      child: Column(
        children: [isMobile ? buildMobileLayout() : buildBrowserLayout()],
      ),
    );
  }

  Widget buildMobileLayout() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Text(
            "Experience",
            style: AppTextStyles.titleMobileBlack,
          ),
          const SizedBox(
            height: 15,
          ),
          SharedCard(
            height: 560,
            width: 400,
            title: "Diletta Solutions",
            position: "Software Developer",
            summary:
                "I work as a flutter software developer in an agile team of 12, using Bitbucket and Jira for efficient collaboration and development. My focus is crafting responsive and innovative mobile applications using Flutter.",
            skills: diletta,
          ),
          const SizedBox(height: 25),
          SharedCard(
            height: 610,
            width: 400,
            title: "Antra Inc",
            position: "Full Stack Software Developer",
            summary:
                "I was a Full Stack developer who worked in an agile work environment alongside a dynamic team of 10 developers. I have proactively immersed myself in practical learning experiences, gaining expertise in cutting-edge technologies such as .NET, Angular, React, Azure, and more.",
            skills: antra,
          ),
          const SizedBox(height: 25),
          SharedCard(
            height: 570,
            width: 400,
            title: "Colorado State University",
            position: "Student Supervisor",
            summary:
                "Worked on Colorado State University’s dining hall, Braiden Dining hall as a part time job. As a supervisor I was responsible for training new employees and act as a shift supervisor for a crew of up to 25 members. The dining hall served between 700–1500 customer and students daily.",
            skills: csu,
          ),
          const SizedBox(height: 25),
          SharedCard(
            height: 610,
            width: 400,
            title: "Diletta Solutions",
            position: "Software Developer Intern",
            summary:
                "As a summer intern, I was cooperating in the development of the front-end of a medical application, providing healthcare professionals with a comprehensive solution for monitoring and analyzing patient information. The application generates prescriptions and forms related with Cannabidiol drugs, leading to potential results, with greater efficiency in clinical workflows",
            skills: diletaIntern,
          )
        ],
      ),
    );
  }

  Widget buildBrowserLayout() {
    return Column(
      children: [
        const SizedBox(height: 35),
        maxWidth! > 1200 ?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TimeLineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              child: const TimeLineCard(
                title: "Diletta Solutions",
                position: "assets/images/diletta.jpg",
                date: "Summer 2019",
              ),
            ),
            TimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              child: const TimeLineCard(
                title: "Colorado State University",
                position: "assets/images/csu.png",
                date: "Jan 2019 - Dez 2022",
              ),
            ),
            TimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              child: const TimeLineCard(
                title: "Antra Inc",
                position: "assets/images/antra.JPG",
                date: "Jan 2023 - Oct 2023",
              ),
            ),
            TimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              child: const TimeLineCard(
                title: "Diletta Solutions",
                position: "assets/images/diletta.jpg",
                date: "Oct 2023 - Current",
              ),
            ),
          ],
        ) : Container(),
        Wrap(
          children: [
            SharedCard(
              height: 510,
              width: 400,
              title: "Diletta Solutions",
              position: "Software Developer",
              summary:
                  "I work as a flutter software developer in an agile team of 12, using Bitbucket and Jira for efficient collaboration and development. My focus is crafting responsive and innovative mobile applications using Flutter.",
              skills: diletta,
            ),
            SharedCard(
              height: 510,
              width: 400,
              title: "Antra Inc",
              position: "Full Stack Software Developer",
              summary:
                  "I was a Full Stack developer who worked in an agile work environment alongside a dynamic team of 10 developers. I have proactively immersed myself in practical learning experiences, gaining expertise in cutting-edge technologies such as .NET, Angular, React, Azure, and more.",
              skills: antra,
            ),
            SharedCard(
              height: 510,
              width: 400,
              title: "Colorado State University",
              position: "Student Supervisor",
              summary:
                  "Worked on Colorado State University’s dining hall, Braiden Dining hall as a part time job. As a supervisor I was responsible for training new employees and act as a shift supervisor for a crew of up to 25 members. The dining hall served between 700–1500 customer and students daily.",
              skills: csu,
            ),
            SharedCard(
              height: 510,
              width: 400,
              title: "Diletta Solutions",
              position: "Software Developer Intern",
              summary:
                  "As a summer intern, I was cooperating in the development of the front-end of a medical application, providing healthcare professionals with a comprehensive solution for monitoring and analyzing patient information. The application generates prescriptions and forms related with Cannabidiol drugs, leading to potential results, with greater efficiency in clinical workflows",
              skills: diletaIntern,
            )
          ],
        )
      ],
    );
  }
}
