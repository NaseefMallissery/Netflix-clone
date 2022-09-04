import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constans.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 630,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtonWidget(icon: Icons.add, title: 'My List'),
                  _PlayButton(),
                  const CustomButtonWidget(
                      icon: Icons.info_outline, title: 'Info')
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

TextButton _PlayButton() {
  return TextButton.icon(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
    onPressed: () {},
    icon: const Icon(
      Icons.play_arrow,
      color: kBlackColor,
      size: 25,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Text(
        'Play',
        style: TextStyle(
          fontSize: 20,
          color: kBlackColor,
        ),
      ),
    ),
  );
}
