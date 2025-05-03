import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';
import 'package:joao_site_flutter/dto/experience_skill_dto.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';
import 'package:joao_site_flutter/shared/sharedCard.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  Projects({super.key, required this.platform});

  final ScreenSizeEnum platform;

  final List<ExperienceSkillDto> ammonite = [
    ExperienceSkillDto(path: Paths.flutter, name: "Flutter"),
  ];

  final List<ExperienceSkillDto> rjDigital = [
    ExperienceSkillDto(path: Paths.flutter, name: "Flutter"),
    ExperienceSkillDto(path: Paths.firebase, name: "Firebase"),
    ExperienceSkillDto(path: Paths.googleCloud, name: "Google Cloud"),
    ExperienceSkillDto(path: Paths.postman, name: "Postman"),
  ];

  final List<ExperienceSkillDto> hrm = [
    ExperienceSkillDto(path: Paths.net, name: ".NET"),
    ExperienceSkillDto(path: Paths.angular, name: "Angular"),
    ExperienceSkillDto(path: Paths.sql, name: "SQL"),
  ];
  final List<ExperienceSkillDto> wheelix = [
    ExperienceSkillDto(path: Paths.net, name: ".NET"),
    ExperienceSkillDto(path: Paths.angular, name: "Angular"),
    ExperienceSkillDto(path: Paths.sql, name: "SQL"),
  ];
  final List<ExperienceSkillDto> abruza = [
    ExperienceSkillDto(path: Paths.net, name: ".NET"),
    ExperienceSkillDto(path: Paths.angular, name: "Angular"),
    ExperienceSkillDto(path: Paths.sql, name: "SQL"),
  ];
  final List<ExperienceSkillDto> nature = [
    ExperienceSkillDto(path: Paths.angular, name: "Angular"),
  ];
  final List<ExperienceSkillDto> ana = [
    ExperienceSkillDto(path: Paths.net, name: ".NET"),
    ExperienceSkillDto(path: Paths.angular, name: "Angular"),
    ExperienceSkillDto(path: Paths.firebase, name: "Firebase"),
  ];
  final List<ExperienceSkillDto> kingOopers = [
    ExperienceSkillDto(path: Paths.flutter, name: "Flutter"),
  ];
  final List<ExperienceSkillDto> t10 = [
    ExperienceSkillDto(path: Paths.react, name: "React"),
    ExperienceSkillDto(path: Paths.java, name: "Java"),
    ExperienceSkillDto(path: Paths.sql, name: "SQL"),
  ];
  final List<ExperienceSkillDto> azurba = [
    ExperienceSkillDto(path: Paths.flutter, name: "Flutter"),
  ];
  final List<ExperienceSkillDto> calculator = [
    ExperienceSkillDto(path: Paths.flutter, name: "Flutter"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            children: [
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 680 : 520,
                  width: 400,
                  title: "Ammonite MTG Companion",
                  location: "Personal Project",
                  summary:
                      "It's a tool for enhancing the game experience of Magic: The Gathering. It has an intuitive design and never-before-seen features compared to other similar applications.",
                  skills: ammonite,
                  button: "Website",
                  onPressed: () => _launchURL(
                      "https://www.ammonitemtgcompanion.com/", context)),
              SharedCard(
                height: platform != ScreenSizeEnum.browser ? 680 : 520,
                width: 400,
                title: "RJ Digital (Kiosk - Windows)",
                location: "At Diletta Solutions",
                summary:
                    "Led the development of the RJ Digital kiosk, designed for placement in public areas throughout the state of Rio de Janeiro to facilitate access for all citizens. The kiosk includes most of the features available on the mobile application, with additional integrated scanners, printers, and a fingerprint sensor, allowing users to easily submit documents and receive printed confirmations directly from the kiosk.",
                skills: rjDigital,
                //store: true,
                //kiosk: true,
              ),
              SharedCard(
                height: platform != ScreenSizeEnum.browser ? 715 : 520,
                width: 400,
                title: "RJ Digital (App - Mobile)",
                location: "At Diletta Solutions",
                summary:
                    "The app provides more than 2,500 public services to the citizens of Rio de Janeiro, including a scheduling system, form requests, dynamic form filling, and in-app video conferencing between citizens and state representatives. Released on 09/09/24, the app is expected to reach around 5-6 million users and is available for both Android and iOS. It will be expanded and made available in other Brazilian states.",
                skills: rjDigital,
                store: true,
                kiosk: false,
              ),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Human Resource Management System",
                  location: "At Antra Inc",
                  summary:
                      "Collaborative contributor in the development of an internal HR app that offered a comprehensive solution for managing employee data and HR processes, such as hiring. The application had many microservices and improved HR department's efficiency by 11%",
                  skills: hrm),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Wheelix Rental Cars",
                  location: "Personal Project",
                  summary:
                      "Wheelix is a fully functional car rental website. Its dynamic nature incorporates various technologies to provide users with a seamless rental experience. The application uses a GEO Location API to fetch user current location, and use it to seek the closest Wheelix Store location to display it in a Leaflet Map. More about this on the Frontend Module in Github",
                  skills: wheelix,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/Wheelix_FrontEnd", context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Abruza Cosmic Store",
                  location: "Personal Project",
                  summary:
                      "Fully working fictitious e-commerce that sells universe themed products like t-shirts, hats, posters and much more. It utilizes JWT tokens to handle authentication and authorization of users, and Route Guards to define which routes are available depending if the user is logging in or not. More about this on the Frontend Module in Github",
                  skills: abruza,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/AbruzaCosmicProduct_frontEnd",
                      context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Nature - Photography Website",
                  location: "Personal Project",
                  summary:
                      "One of my hobbies is to do birdwatch and take pictures of the nature. I built this website, using Angular, to show the best pictures I took of birds, flowers, animals and landscapes. More about this app on the Github Repository",
                  skills: nature,
                  button: "Github",
                  onPressed: () =>
                      _launchURL("https://github.com/Azurba/Nature", context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Dental Clinic Website",
                  location: "Personal Project",
                  summary:
                      "I designed a simple yet efficient website and Windows application for a small dental clinic. The application was designed to better manage the information about patients and has two parts, a internal ASP.NET which runs locally connected with a Firebase Database. The website mainly purpose was to publicize her clinic.",
                  skills: ana,
                  button: "Website",
                  onPressed: () =>
                      _launchURL("https://anacmpimenta.com/", context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "King Oopers",
                  location: "College Project",
                  summary:
                      "This app was developed to investigate to what extent a more accessible UX design in mobile applications can improve the user experience and performance. It was semester-based project for the class Introduction to Human-Computer Interaction (CS464), taught by Francisco Ortega, on Spring 2022",
                  skills: kingOopers,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/KingOopers", context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "T10 Trip Planner",
                  location: "College Project",
                  summary:
                      "Simpler version of the Google Maps application, this app was designed to calculate the shortest distance between one place to another.It was developed as a semester-based project for the class Software Engineering (CS314), taught by Dave Matthews, on Fall 2021",
                  skills: t10,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/T10-Map-App", context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Azurba MTG Player Panel",
                  location: "Personal Project",
                  summary:
                      "At a glance, this mobile application was designed specifically for assisting players to play Magic The Gathering.",
                  skills: azurba,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/Azurba-s_MTG_Player_Panel",
                      context)),
              SharedCard(
                  height: platform != ScreenSizeEnum.browser ? 600 : 520,
                  width: 400,
                  title: "Currency Calculator",
                  location: "Personal Project",
                  summary:
                      "This application calculates the current currency value for US Dolar, Euro and BR Real. It uses an API of the HG Brasil to get the values in real-time.",
                  skills: calculator,
                  button: "Github",
                  onPressed: () => _launchURL(
                      "https://github.com/Azurba/Currency-Calculator",
                      context)),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url, BuildContext context) async {
  Uri site = Uri.parse(url);
  if (await canLaunchUrl(site)) {
    await launchUrl(site);
  } else {
    faultyLinkDialog(context);
  }
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
          child: const Text('Fechar',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ],
      backgroundColor: Colors.red,
    ),
  );
}
