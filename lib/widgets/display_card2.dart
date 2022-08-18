import 'package:flutter/material.dart';

class DisplayCard2 extends StatelessWidget {
  final String time;
  final Color primaryColor;
  final Color secondaryColor;
  const DisplayCard2({
    required this.primaryColor,
    required this.secondaryColor,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.008),
      height: screenSize.height * 0.13,
      width: screenSize.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.qr_code_2,
                size: 75,
                color: Color.fromRGBO(159, 246, 231, 1),
              ),
            ],
          ),
          Expanded(
            child: Card(
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Basic Physics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: secondaryColor,
                        ),
                        Text(
                          'Physics Building Floor 2, 1A',
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.03,
                          width: screenSize.width * 0.15,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 2,
                                top: 0,
                                height: 24,
                                width: 24,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 0,
                                height: 24,
                                width: 24,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 0,
                                height: 24,
                                width: 24,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 0.15),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '+24',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
