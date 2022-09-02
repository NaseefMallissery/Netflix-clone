import 'package:flutter/material.dart';
import 'package:netflix/core/constans.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_poster_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

import '../widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MainTitleCard(title: 'Released in the past year'),
              MainTitleCard(title: 'Trending Now'),
              NumberTitleCard(),
              MainTitleCard(title: 'Tense Dramas'),
              MainTitleCard(title: 'South Indian Cinemas')
            ],
          ),
        ),
      ),
    );
  }
}
