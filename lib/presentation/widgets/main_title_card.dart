import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constans.dart';
import 'package:netflix/presentation/widgets/main_poster_card.dart';

import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainPosterCard(),
            ),
          ),
        )
      ],
    );
  }
}
