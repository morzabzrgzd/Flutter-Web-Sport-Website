import 'package:flutter/material.dart';


class BuildIconWidget extends StatelessWidget {
  const BuildIconWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
