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
                      "Accessibility For The Elderly in Mobile Applications: an analysis for optimal UX Design",
                  summary:
                      "This article explores how UX design affects older adults' ability to use mobile applications. Drawing from personal experiences and accessibility concerns, I used Flutter to create two app versions—one with accessibility features and one without—to examine how limited accessibility impacts user experience.",
                  height: platform != ScreenSizeEnum.browser ? 680 : 520,
                  width: 400,
                  button: "Read at Dev.to",
                  onPressed: () => _launchURL(
                      "https://dev.to/joo_pimenta_29a8b0e8bb42/accessibility-for-the-elderly-in-mobile-applications-an-analysis-for-optimal-ux-design-550h",
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
