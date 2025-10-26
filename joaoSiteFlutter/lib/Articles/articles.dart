import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/image_paths.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';
import 'package:joao_site_flutter/shared/sharedCard.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatelessWidget {
  const Articles({super.key, required this.platform});

  final ScreenSizeEnum platform;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
        child: Column(
          children: [
            Text(
              "Project Related Articles",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child:
                  Wrap(alignment: WrapAlignment.center, spacing: 20, children: [
                SharedCard(
                    title: "Inauguração do Poupatempo Paraná - Curitiba",
                    subtitle: "Inauguration of Poupatempo Paraná - Curitiba",
                    logo: Paths.brazilFlag,
                    summary:
                        "The Governor Ratinho inaugurated the first \"Poupatempo Paraná\" unit in Curitiba, the first of 20 planned for the state. The unit aims to centralize, simplify, and modernize public services. It consolidates services from various state bodies, allowing citizens to solve multiple issues in one place. The project also focuses on digitalization with online scheduling and self-service kiosk. The new model is expected to save the state R\$ 2 billion reais within the next five years.",
                    height: platform != ScreenSizeEnum.browser ? 1000 : 950,
                    width: 400,
                    button: "Read",
                    image: Paths.ratinho,
                    onPressed: () => _launchURL(
                        "https://www.fazenda.pr.gov.br/Noticia/Com-mais-de-200-servicos-1a-unidade-do-Poupatempo-Parana-e-inaugurada-em-Curitiba",
                        context)),
                SharedCard(
                    title: "Unidade Poupatempo começa a funcionar em Curitiba",
                    subtitle: "Unit Poupatempo Paraná begins to operate",
                    logo: Paths.brazilFlag,
                    summary:
                        "VIDEO: News report on the inauguration of the first 'Poupatempo Paraná' service center in Curitiba, featuring footage of the new operating kiosks.",
                    height: 950,
                    width: 400,
                    buttonTitleList: [
                      "Watch Video 1",
                      "Watch Video 2",
                      "Watch Video 3",
                    ],
                    buttonOnPressedList: [
                      () => _launchURL(
                          "https://g1.globo.com/pr/parana/videos-meio-dia-parana/video/unidade-poupatempo-comeca-a-funcionar-em-curitiba-13979662.ghtml",
                          context),
                      () => _launchURL(
                          "https://g1.globo.com/pr/parana/videos-bom-dia-parana/video/poupatempo-inaugura-primeira-unidade-no-parana-13992094.ghtml?utm_source=whatsapp&utm_medium=share-player-desktop",
                          context),
                      () => _launchURL(
                          "https://g1.globo.com/pr/parana/economia/noticia/2025/10/07/como-funciona-o-atendimento-no-novo-poupatempo-em-curitiba.ghtml",
                          context),
                    ],
                    image: Paths.meiodia1,
                    onPressed: () => _launchURL(
                        "https://g1.globo.com/pr/parana/videos-meio-dia-parana/video/unidade-poupatempo-comeca-a-funcionar-em-curitiba-13979662.ghtml",
                        context)),
                SharedCard(
                    title:
                        "Com mais de 200 serviços, 1ª unidade do Poupatempo Paraná é inaugurada em Curitiba",
                    subtitle:
                        "With more than 200 services, 1ª Poupate Paraná unit is inaugurated in Curitiba",
                    logo: Paths.brazilFlag,
                    summary:
                        "The state of Paraná has begun a major push to centralize and modernize public services with the launch of the \"Poupatempo Paraná\" initiative. The first of 20 planned units has opened in Curitiba, establishing a new service model designed to simplify access for citizens.",
                    height: 950,
                    width: 400,
                    button: "Read",
                    image: Paths.jornale,
                    onPressed: () => _launchURL(
                        "https://www.fazenda.pr.gov.br/Noticia/Com-mais-de-200-servicos-1a-unidade-do-Poupatempo-Parana-e-inaugurada-em-Curitiba",
                        context)),
                SharedCard(
                    title:
                        "‘RJ Digital’: app que reúne serviços públicos para a população é lançado",
                    subtitle:
                        "‘RJ Digital’: New app featuring a range of public services for citizens is released",
                    logo: Paths.brazilFlag,
                    summary:
                        "VIDEO: The state government of Rio de Janeiro officially launched the RJ Digital mobile application on Monday, September 9th, at the Guanabara Palace. This digital initiative centralizes access to a wide range of public services via mobile phone.",
                    height: 950,
                    width: 400,
                    button: "Watch Video",
                    image: Paths.rjdigital1,
                    onPressed: () => _launchURL(
                        "https://g1.globo.com/rj/rio-de-janeiro/noticia/2024/09/09/rj-digital-app-que-reune-servicos-publicos-para-a-populacao.ghtml",
                        context)),
                SharedCard(
                    title:
                        "Governo do Rio lança aplicativo RJ Digital com mais de 2.500 serviços para o cidadão",
                    subtitle:
                        "Rio de Janeiro Government inaugurated the RJ Digital app, with more than 2.500 public services for the citizens.",
                    logo: Paths.brazilFlag,
                    summary:
                        "The State Government of Rio de Janeiro launched the RJ Digital application on September 9th, a unified digital platform available for iOS and Android. The app centralizes over 2,500 public services across key areas including education, health, and public safety.",
                    height: 950,
                    width: 400,
                    button: "Read",
                    image: Paths.rjdigital2,
                    onPressed: () => _launchURL(
                        "https://diariodorio.com/governo-do-rio-lanca-aplicativo-rj-digital-com-mais-de-2-500-servicos-para-o-cidadao/",
                        context)),
                SharedCard(
                    title:
                        "RJ Digital avança e já oferece 1,8 mil serviços ao cidadão",
                    subtitle:
                        "RJ Digital offers 1,8 mil services for the citizens",
                    logo: Paths.brazilFlag,
                    summary:
                        "This text focuses on the overall RJ Digital Program and the progress of the state's unified service portal, rather than the mobile app launch itself. It provides metrics on digitalization, quotes on strategy, and the program's foundational pillars.",
                    height: 950,
                    width: 400,
                    button: "Read",
                    image: Paths.rjdigital3,
                    onPressed: () => _launchURL(
                        "https://www.rj.gov.br/proderj/proderjdigital",
                        context)),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(),
            SizedBox(
              height: 50,
            ),
            Text("My Articles",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: [
                  SharedCard(
                      title:
                          "A Simple Automatic Document Cropping in Flutter Using the Canny Edge Detector",
                      summary:
                          "This article presents an efficient method for automatic document cropping in mobile and Windows applications. The strategy leverages the multi-stage Canny Edge Detection algorithm to accurately identify document boundaries.",
                      height: 830,
                      width: 400,
                      logo: Paths.usFlag,
                      button: "Read at Dev.to",
                      image: "assets/images/crop_article2.JPG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/a-simple-automatic-document-cropping-in-flutter-using-the-canny-edge-detector-17d4",
                          context)),
                  SharedCard(
                      title:
                          "Demystifying Flutter Layout System: Constraints, Sizing, and Overflow Management",
                      summary:
                          "Flutter's layout system is built around a fundamental principle: constraints flow downward, sizes expand upward, and the parent determines the position. In this post, we will explore the inner workings of Flutter's layout mechanics in detail.",
                      height: 830,
                      width: 400,
                      logo: Paths.usFlag,
                      button: "Read at Dev.to",
                      image: "assets/images/layout.JPG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/demystifying-flutter-layout-system-constraints-sizing-and-overflow-management-450i",
                          context)),
                  SharedCard(
                      title:
                          "Mastering Flutter Lifecycles: From Application to Render Objects",
                      summary:
                          "This article will examine Flutter's lifecycles from the broadest to the most specific, starting with the Application Lifecycle and progressing down to State Object, Element and the RenderObject Lifecycle",
                      height: 830,
                      width: 400,
                      button: "Read at Dev.to",
                      logo: Paths.usFlag,
                      image: "assets/images/lifecycle.JPG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/mastering-flutter-lifecycles-from-application-to-render-objects-3gfd",
                          context)),
                  SharedCard(
                      title:
                          "Understanding Flutter's Rendering Pipeline: From Widgets to Pixels",
                      summary:
                          "Building on the \"Flutter Architecture made it easy\" article, this post will delve into Flutter's Rendering Pipeline, explaining how it works and why understanding it is crucial for developers looking to optimize application performance.",
                      height: 830,
                      width: 400,
                      logo: Paths.usFlag,
                      button: "Read at Dev.to",
                      image: "assets/images/renderingPipeline.JPG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/understanding-flutters-rendering-pipeline-from-widgets-to-pixels-574f",
                          context)),
                  SharedCard(
                      title: "Flutter Architecture made it easy",
                      summary:
                          "In this article, I’ll simplify the abstract concept of Flutter’s architecture, making it easy for everyone to understand.",
                      height: 830,
                      width: 400,
                      logo: Paths.usFlag,
                      button: "Read at Dev.to",
                      image: "assets/images/flutterTree.PNG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/flutter-architecture-made-it-easy-4b9b",
                          context)),
                  SharedCard(
                      title:
                          "Accessibility For The Elderly in Mobile Applications: an analysis for optimal UX Design",
                      summary:
                          "This article explores how UX design affects older adults' ability to use mobile applications. Drawing from personal experiences and accessibility concerns, I used Flutter to create two app versions—one with accessibility features and one without—to examine how limited accessibility impacts user experience.",
                      height: platform != ScreenSizeEnum.browser ? 1000 : 870,
                      width: 400,
                      logo: Paths.usFlag,
                      button: "Read at Dev.to",
                      image: "assets/images/accessibility.PNG",
                      onPressed: () => _launchURL(
                          "https://dev.to/joaopimentag/accessibility-for-the-elderly-in-mobile-applications-an-analysis-for-optimal-ux-design-550h",
                          context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
}
