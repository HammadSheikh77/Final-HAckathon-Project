import 'package:final_hackathon/Widgets/CardWidget.dart';
import 'package:final_hackathon/Widgets/DiscountWidget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/Background Image.png',
              fit: BoxFit.cover,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 30),
                    child: Image.asset('assets/icons/􀌇.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 40),
                    child: Image.asset('assets/images/Content.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 20),
                    child: Image.asset('assets/icons/Segmented Control.png'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(child: Image.asset('assets/images/Frame 11.png')),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Cardwidget(
                          image: 'assets/images/burger 1.png',
                          heading: 'Burger'),
                    ),
                    Cardwidget(
                        image: 'assets/images/cake 1.png', heading: 'Dessert'),
                    Cardwidget(
                        image: 'assets/images/taco 1.png', heading: 'Mexican'),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Cardwidget(
                          image: 'assets/images/3D Food Icon by @OdafeUI.png',
                          heading: 'Sushi'),
                    )
                  ],
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Discountwidget(
                            heading: '30% OFF',
                            image: 'assets/images/Pasta.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Discountwidget(
                            heading: '30% OFF',
                            image: 'assets/images/Pasta.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Discountwidget(
                            heading: '30% OFF',
                            image: 'assets/images/Pasta.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
