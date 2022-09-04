import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 25,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}