import 'package:flutter/material.dart';


class CristImage extends StatelessWidget {
  const CristImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('assets/images/crist.png',
                scale: 1),
          ),
        ),
      ),
    );
  }
}
