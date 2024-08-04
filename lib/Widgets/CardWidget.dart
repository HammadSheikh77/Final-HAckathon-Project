import 'package:flutter/material.dart';

class Cardwidget extends StatelessWidget {
  final String image;
  final String heading;
  const Cardwidget({super.key, required this.image, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                  color: const Color(0xff1D102D),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(image),
            ),
            Text(
              heading,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
