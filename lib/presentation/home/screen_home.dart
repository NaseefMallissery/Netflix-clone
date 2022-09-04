import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constans.dart';
import 'package:netflix/presentation/home/widgets/backgroung_card_widget.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }

              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    MainTitleCard(title: 'Released in the past year'),
                    kheight,
                    MainTitleCard(title: 'Trending Now'),
                    kheight,
                    NumberTitleCard(),
                    kheight,
                    MainTitleCard(title: 'Tense Dramas'),
                    kheight,
                    MainTitleCard(title: 'South Indian Cinemas'),
                    kheight,
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://cdn.vox-cdn.com/thumbor/AwKSiDyDnwy_qoVdLPyoRPUPo00=/39x0:3111x2048/1400x1400/filters:focal(39x0:3111x2048):format(png)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                                  width: 50,
                                  height: 50,
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kwidth
                              ],
                            ),
                            kheight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Tv Shows",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Movies",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Catogaries",
                                  style: kHomeTitleText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
