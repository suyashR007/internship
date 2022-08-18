import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:internship/utils/colors.dart';
import 'package:internship/utils/display_card_list.dart';
import 'package:internship/utils/image_list.dart';
import 'package:internship/widgets/display_card2.dart';
import 'package:internship/widgets/floating_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.tune_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.north),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * 0.27,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: screenSize.height * 0.2,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: kPrimary,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                children: const [
                                  Text(
                                    'Hey, ',
                                    style: TextStyle(
                                      textBaseline: TextBaseline.alphabetic,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Afrin',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      textBaseline: TextBaseline.alphabetic,
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                '18445',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Text(
                                'Instructor',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Text(
                                'Physics',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: SizedBox(
                                  width: screenSize.width * 0.18,
                                  height: screenSize.height * 0.09,
                                  child: Image.asset('assets/profile_pic.png'),
                                ),
                              ),
                              const Text(
                                'Instructor ID: 18445',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingButttonStyle(
                          icon: Icons.schedule_sharp,
                          onPressed: () {},
                          text: 'Schedule',
                        ),
                        FloatingButttonStyle(
                          icon: Icons.lock_clock,
                          onPressed: () {},
                          text: 'Attendance',
                        ),
                        FloatingButttonStyle(
                          icon: Icons.layers,
                          onPressed: () {},
                          text: 'Assignments',
                        ),
                        FloatingButttonStyle(
                          icon: Icons.note_sharp,
                          onPressed: () {},
                          text: 'Results',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.035),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, Afrin!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  const Text(
                    'Your Activity',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  CarouselSlider(
                    items: displayCardlist,
                    options: CarouselOptions(
                      height: screenSize.height * 0.25,
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      disableCenter: true,
                      clipBehavior: Clip.none,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wednesday, Jun 23',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_month),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  const DisplayCard2(
                    primaryColor: Color.fromARGB(255, 249, 209, 222),
                    secondaryColor: Color.fromARGB(255, 244, 143, 177),
                    time: '10:00 AM',
                  ),
                  const DisplayCard2(
                    primaryColor: Color.fromARGB(255, 29, 143, 250),
                    secondaryColor: Colors.purple,
                    time: '11:00 AM',
                  ),
                  const DisplayCard2(
                    primaryColor: Color.fromARGB(255, 29, 143, 250),
                    secondaryColor: Colors.purple,
                    time: '12:00 AM',
                  ),
                  const DisplayCard2(
                    primaryColor: Color.fromARGB(255, 29, 143, 250),
                    secondaryColor: Colors.purple,
                    time: '01:00 PM',
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text(
                    'Checkout Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.015,
                  ),
                  CarouselSlider(
                    items: listImage,
                    options: CarouselOptions(
                      height: screenSize.height * 0.30,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      disableCenter: true,
                      clipBehavior: Clip.none,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.08,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
