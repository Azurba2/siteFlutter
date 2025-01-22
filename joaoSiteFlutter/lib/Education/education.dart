import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/text.dart';
import 'package:joao_site_flutter/shared/screen_sizes_enum.dart';
import 'package:joao_site_flutter/shared/sharedCard.dart';
import 'package:joao_site_flutter/shared/time_line_card.dart';
import 'package:joao_site_flutter/shared/time_line_tile.dart';

class Education extends StatelessWidget {
  final ScreenSizeEnum platform;
  const Education({super.key, required this.platform});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            Column(
              children: [
                platform == ScreenSizeEnum.browser
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TimeLineTile(
                            isFirst: true,
                            isLast: false,
                            isPast: true,
                            child: const TimeLineCard(
                              title: "PUC - Campinas",
                              position: "assets/images/puclogo.png",
                              date: "2011 - 2014",
                            ),
                          ),
                          TimeLineTile(
                            isFirst: false,
                            isLast: false,
                            isPast: true,
                            child: const TimeLineCard(
                              title: "Universidade de São Paulo",
                              position: "assets/images/usplogo.png",
                              date: "2015 - 2017",
                            ),
                          ),
                          TimeLineTile(
                            isFirst: false,
                            isLast: true,
                            isPast: true,
                            child: const TimeLineCard(
                              title: "Colorado State University",
                              position: "assets/images/csu.png",
                              date: "2018 - 2022",
                            ),
                          ),
                        ],
                      )
                    : Container(),
                Center(
                  child: Wrap(children: [
                    SharedCard(
                      height: platform == ScreenSizeEnum.browser ? 500 : 550,
                      width: 400,
                      date: platform == ScreenSizeEnum.browser
                          ? null
                          : "2011 - 2014",
                      image: "assets/images/puc.JPG",
                      title: "PUC - Campinas",
                      summary: "Bachelor in Biology",
                    ),
                    SharedCard(
                      height: platform == ScreenSizeEnum.browser ? 500 : 550,
                      width: 400,
                      date: platform == ScreenSizeEnum.browser
                          ? null
                          : "2015 - 2017",
                      image: "assets/images/usp.JPG",
                      title: "Universidade de São Paulo",
                      summary: "Master's in Microbiology",
                    ),
                    SharedCard(
                      height: platform == ScreenSizeEnum.browser ? 500 : 550,
                      width: 400,
                      date: platform == ScreenSizeEnum.browser
                          ? null
                          : "2018 - 2022",
                      image: "assets/images/csuimg.JPG",
                      title: "Colorado State University",
                      summary: "Bachelor in Computer Science",
                      award: "Dean List",
                    ),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildMobileLayout() {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              "Education",
              style: AppTextStyles.titleMobileBlack,
            ),
            SizedBox(
              height: 15,
            ),
            SharedCard(
              height: 500,
              width: 400,
              image: "assets/images/csuimg.JPG",
              title: "Colorado State University",
              summary: "Bachelor in Computer Science",
              award: "Dean List",
            ),
            SharedCard(
              height: 460,
              width: 400,
              image: "assets/images/usp.JPG",
              title: "Universidade de São Paulo",
              summary: "Master's in Microbiology",
            ),
            SharedCard(
              height: 460,
              width: 400,
              image: "assets/images/puc.JPG",
              title: "PUC - Campinas",
              summary: "Bachelor in Biology",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBrowserLayout() {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          platform == ScreenSizeEnum.browser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TimeLineTile(
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      child: const TimeLineCard(
                        title: "PUC - Campinas",
                        position: "assets/images/puclogo.png",
                        date: "2011 - 2014",
                      ),
                    ),
                    TimeLineTile(
                      isFirst: false,
                      isLast: false,
                      isPast: true,
                      child: const TimeLineCard(
                        title: "Universidade de São Paulo",
                        position: "assets/images/usplogo.png",
                        date: "2015 - 2017",
                      ),
                    ),
                    TimeLineTile(
                      isFirst: false,
                      isLast: true,
                      isPast: true,
                      child: const TimeLineCard(
                        title: "Colorado State University",
                        position: "assets/images/csu.png",
                        date: "2018 - 2022",
                      ),
                    ),
                  ],
                )
              : Container(),
          const Wrap(children: [
            SharedCard(
              height: 500,
              width: 400,
              image: "assets/images/csuimg.JPG",
              title: "Colorado State University",
              summary: "Bachelor in Computer Science",
              award: "Dean List",
            ),
            SharedCard(
              height: 500,
              width: 400,
              image: "assets/images/usp.JPG",
              title: "Universidade de São Paulo",
              summary: "Master's in Microbiology",
            ),
            SharedCard(
              height: 500,
              width: 400,
              image: "assets/images/puc.JPG",
              title: "PUC - Campinas",
              summary: "Bachelor in Biology",
            ),
          ]),
        ],
      ),
    );
  }
}
