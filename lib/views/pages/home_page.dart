import 'package:epicpodcast/utils/all_colors.dart';
import 'package:epicpodcast/utils/font_size.dart';
import 'package:epicpodcast/views/components/labels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AllColors.black,
                width: double.maxFinite,
                height: MediaQuery.of(context).size.width - 50,
                child: Center(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: const [
                    Label(
                      text: "David Harter's",
                      fontSize: FontSize.h1,
                      fontWeight: FontWeight.bold,
                      color: AllColors.white,
                    ),
                    Label(
                      text: 'INFINITYX',
                      fontSize: FontSize.h2,
                      fontWeight: FontWeight.w400,
                      color: AllColors.blue,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140),
                      child: Divider(
                        height: 10,
                        color: AllColors.blue,
                        thickness: 2,
                      ),
                    ),
                    Label(
                      text: 'Listen Every Tuesday at 7:00 PM EST',
                      fontSize: FontSize.p2,
                      color: AllColors.white,
                    ),
                  ]),
                ),
              ),
              Container(
                color: AllColors.grey,
                height: 400,
                width: double.maxFinite,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Transform.translate(
                    offset: const Offset(0, -80),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/david.png',
                        ),
                        const Label(
                          text: 'David Harter',
                          fontSize: FontSize.h4,
                          color: AllColors.blue,
                        ),
                        const Label(
                          text: 'David Harter',
                          fontSize: FontSize.h4,
                          color: AllColors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  color: AllColors.black,
                  width: double.maxFinite,
                  height: 130,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Label(
                        text: 'Listen On',
                        fontSize: FontSize.h4,
                        color: AllColors.white,
                      ),
                      SizedBox(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            PodcastIcon(
                              icon: 'spotify',
                              url: 'https://spotify.com/',
                            ),
                            PodcastIcon(
                              icon: 'spotify',
                              url: 'https://spotify.com/',
                            ),
                            PodcastIcon(
                              icon: 'spotify',
                              url: 'https://spotify.com/',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class PodcastIcon extends StatelessWidget {
  final String url, icon;

  const PodcastIcon({
    super.key,
    required this.url,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: CupertinoButton(
          padding: EdgeInsets.zero,
          minSize: 0,
          onPressed: () {
            _launchUrl(url: url);
          },
          child: SvgPicture.asset(
            'assets/icons/$icon.svg',
          )),
    );
  }

  Future<void> _launchUrl({required String url}) async {
    if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
