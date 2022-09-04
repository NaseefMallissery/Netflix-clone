import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constans.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://smashinghub.com/wp-content/uploads/2012/06/Use-AIDA-Formula.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 14,
          bottom: -15,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: Color.fromARGB(255, 0, 0, 0),
                fontSize: 130,
                color: kBlackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
