import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DisplayCard extends StatelessWidget {
  final Color bgColor;
  final Color barColor;
  final String headline;
  final String secondaryText;
  final String centerText;
  const DisplayCard({
    required this.bgColor,
    required this.headline,
    required this.secondaryText,
    required this.centerText,
    required this.barColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.25,
      width: screenSize.width * 0.4,
      child: Card(
        color: bgColor,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularPercentIndicator(
                radius: screenSize.height * 0.05,
                lineWidth: 8.0,
                animation: true,
                percent: 0.4,
                center: Text(
                  centerText,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: barColor,
                backgroundColor: Colors.transparent,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headline,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      secondaryText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
