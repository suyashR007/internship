import 'package:flutter/material.dart';

class DisplayCard2 extends StatelessWidget {
  const DisplayCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.13,
      width: screenSize.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                '10:00 AM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.qr_code_2,
                size: 75,
                color: Colors.cyan[300],
              ),
            ],
          ),
          Expanded(
            child: Card(
              color: Colors.pink[50],
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
                        color: Colors.pink[200],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.pink[200],
                        ),
                        Text(
                          'Physics Building Floor 2, 1A',
                          style: TextStyle(
                            color: Colors.pink[200],
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
