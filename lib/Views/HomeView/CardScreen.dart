import 'package:final_hackathon/Views/HomeView/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cardscreen extends StatelessWidget {
  const Cardscreen({super.key});

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
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Image.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: () {
                             Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 230),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 270),
            child: Image.asset('assets/images/Frame 27.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 30),
            child: Image.asset('assets/images/Frame 28.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 491),
            child: Image.asset('assets/images/Tab.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 540, left: 20),
            child: Text(
              'Featured Items',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 570),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/Item 1.png'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Image.asset('assets/images/Item 1.png'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
