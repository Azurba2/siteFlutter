import 'package:flutter/material.dart';
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
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            children: [
              SharedCard(
                  title:
                      "Demystifying Flutter Layout System: Constraints, Sizing, and Overflow Management",
                  summary:
                      "Flutter's layout system is built around a fundamental principle: constraints flow downward, sizes expand upward, and the parent determines the position. In this post, we will explore the inner workings of Flutter's layout mechanics in detail.",
                  height: 830,
                  width: 400,
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
                  height: 830,
                  width: 400,
                  button: "Read at Dev.to",
                  image: "assets/images/accessibility.PNG",
                  onPressed: () => _launchURL(
                      "https://dev.to/joaopimentag/accessibility-for-the-elderly-in-mobile-applications-an-analysis-for-optimal-ux-design-550h",
                      context)),
            ],
          ),
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
