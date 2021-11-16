import 'package:flutter/material.dart';
import 'package:flutter_sport_website/components/build_icon_widget.dart';


class RightWidget extends StatelessWidget {
  const RightWidget({
    Key? key,
    required this.textRonaldo,
  }) : super(key: key);

  final String textRonaldo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '100M',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
          ),
          Text(
            textRonaldo,
            textAlign: TextAlign.justify,
            maxLines: 5,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BuildIconWidget(
                  image: 'assets/images/lion.png'),
              BuildIconWidget(
                  image: 'assets/images/adidas.png'),
              BuildIconWidget(
                  image: 'assets/images/nike.png'),
            ],
          )
        ],
      ),
    );
  }
}
