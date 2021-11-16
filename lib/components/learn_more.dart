import 'package:flutter/material.dart';


class LearnMoreWidget extends StatelessWidget {
  const LearnMoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('all sports'.toUpperCase()),
          Text(
            'creative sport website'.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          const SizedBox(height: 12),
          Text('Provide Best Development'.toUpperCase()),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff000000),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text('Learn More'),
          )
        ],
      ),
    );
  }
}
