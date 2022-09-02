import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constans.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

import '../../widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 Tv Shows in India Today'),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(index: index),
            ),
          ),
        )
      ],
    );
  }
}
