import 'package:flutter/material.dart';

class Discountwidget extends StatelessWidget {
  final String heading;
  final String image;
  const Discountwidget({super.key, required this.heading, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.24,
          width: MediaQuery.of(context).size.width * 0.83,
          decoration: BoxDecoration(
              color: const Color(0xff1D102D),
              borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 149),
          child: Image.asset(image),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                heading,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Discover discounts in your\n favorite local restaurants',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image.asset('assets/icons/Button.png'),
            ),
          ],
        ),
      ],
    );
  }
}
